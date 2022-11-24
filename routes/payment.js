var express = require("express");
var router = express.Router();
var Payment = require("../models/payment");


router.post("/", (req, res) => {
    Payment.payment(req, res)
})

module.exports = router
