const express = require("express");
const router = express.Router();
const paypal = require("@paypal/checkout-server-sdk")

const CLIENT_ID = "AWPhXSdhphH2DMvFKs_Zm-0t0w3JgbVMzTa3zk_drkDqTn7HON-eOeusZF_1dDFo5CjzIyEhFRRJCEd0";
const CLIENT_SECRET = "EO_v73EyevkDrvxxj_VviBBR3d7UAUBDNVGX-HveijMDbI-bOb3Omkdg2OUvESDAwe5nxCl4_XL-YM-2";

let environment = new paypal.core.SandboxEnvironment(CLIENT_ID, CLIENT_SECRET);

let client = new paypal.core.PayPalHttpClient(environment);

// A unique invoice_number value must be supplied with each transaction. Using the same invoice_number as a previous transaction will produce a Duplicate invoice Id detected error
function buildRequestBody(amount) {
  return {
    "intent": 'CAPTURE',
    "application_context": {
      "return_url": 'https://hcmut-tmdt.netlify.app/payment-success',
      "cancel_url": 'https://hcmut-tmdt.netlify.app/payment-fail',
    },
    "purchase_units": [
        {
            "amount": {
                "currency_code": "USD",
                "value": amount
            }
        }
     ],
  };
}
router.post('/', async (req, res) => {
  console.log(req.body)
  let amount = req.body.amount;
  // console.log(amount)
  let request = new paypal.orders.OrdersCreateRequest();
  request.headers['prefer'] = 'return=representation';
  let test = buildRequestBody(amount);
  request.requestBody(test);
  try {
    let response = await client.execute(request);
    console.log(`Order: ${JSON.stringify(response.result, null, '\t')}`);
    for (let i = 0; i < response.result.links.length; i++) {
      if (response.result.links[i].rel === 'approve') {
        res.json({
          status: 'success',
          link: response.result.links[i].href,
        });
      }
    }
  } catch (err) {
    res.status(401).json({
      status: 'fail',
      link: 'UNDEFINE',
    });
  }
});
//?token=7GG200691G494104D&PayerID=D2UGSMXGFYD6G
router.get('/success', (req, res) => {
  //console.log(req.query);
  var paymentId = req.query.token;
  console.log("hello")
  console.log(paymentId);
  // // var payerId = { payer_id: req.query.PayerID };
  try {
    let captureOrder = async function (orderId) {
      request = new paypal.orders.OrdersCaptureRequest(orderId);
      request.requestBody({});
      // Call API with your client and get a response for your call
      let response = await client.execute(request);
      // If call returns body in response, you can get the deserialized version from the result attribute of the response.
      //console.log(`Capture: ${JSON.stringify(response.result)}`);
      res.status(201).json({
        status: 'success',
        payment: response.result,
      });
    };
    captureOrder(paymentId);
  } catch (err) {
    console.error(JSON.stringify(error));
    res.status(400).json({
      status: 'payment not successful',
      payment: {},
    });
  }
});

router.get('/getorder', (req, res) => {
  try {
    var orderId = req.query.token;
    let getRequest = new paypal.orders.OrdersGetRequest(orderId);
    client.execute(getRequest).then((getResponse) => {
      // console.log(JSON.stringify(getResponse.result));
      res.status(201).json({
        status: 'data payment ',
        payment: getResponse.result,
      });
    });
  } catch (err) {
    console.error(JSON.stringify(error));
    res.status(400).json({
      status: 'payment not successful',
      payment: {},
    });
  }
});

router.get('/cancel', (req, res) =>
  res.status(201).json({
    status: 'fail',
    msg: 'payment cancel',
  })
);

module.exports = router;
