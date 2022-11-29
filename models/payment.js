var paypal = require("paypal-rest-sdk");

const CLIENT_ID = "AWPhXSdhphH2DMvFKs_Zm-0t0w3JgbVMzTa3zk_drkDqTn7HON-eOeusZF_1dDFo5CjzIyEhFRRJCEd0";
const CLIENT_SECRET = "EO_v73EyevkDrvxxj_VviBBR3d7UAUBDNVGX-HveijMDbI-bOb3Omkdg2OUvESDAwe5nxCl4_XL-YM-2";

paypal.configure({
  mode: "sandbox", //sandbox or live
  client_id: CLIENT_ID,
  client_secret: CLIENT_SECRET,
});

module.exports.payment = (req, res) => {
    var app = req.app
    const amount = req.body.amount;
    const create_payment_json = {
    intent: "sale",
    payer: {
      payment_method: "paypal",
    },
    redirect_urls: {
      return_url: "http://localhost:3000/success",
      cancel_url: "http://localhost:3000/fail",
    },
    transactions: [
      {
        item_list: {
          items: [
            {
              name: "Red Sox Hat",
              sku: "001",
              price: amount,
              currency: "USD",
              quantity: 1,
            },
          ],
        },
        amount: {
          currency: "USD",
          total: amount,
        },
        description: "Hat for the best team ever",
      },
    ],
  };

  app.get("/success", (req, res) => {
    const payerId = req.query.PayerID;
    const paymentId = req.query.paymentId;

    const execute_payment_json = {
      payer_id: payerId,
      transactions: [
        {
          amount: {
            currency: "USD",
            total: amount,
          },
        },
      ],
    };

    paypal.payment.execute(
      paymentId,
      execute_payment_json,
      function (error, payment) {
        if (error) {
          console.log(error.response);
          app.get("/cancel", (req, res) => res.send("Cancelled"));
          throw error;
        } else {
          res.send("Success");
        }
      }
    );
  });

  paypal.payment.create(create_payment_json, (error, payment) => {
    if (error) {
      app.get("/cancel", (req, res) => res.send("Cancelled"));
      throw error;
    } else {
      for (let i = 0; i < payment.links.length; i++) {
        if (payment.links[i].rel === "approval_url") {
          res.send(payment.links[i].href);
        }
      }
    }
  });
}
