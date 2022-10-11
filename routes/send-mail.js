var express = require('express');
var router = express.Router();
var sendMail = require('../models/send-mail');

router.post('/', function(req, res, next) {
    var email = req.body.email
    var subject = req.body.subject
    var body = req.body.body
    sendMail.sendMail(email, subject, body, function(err, status){
        if (err) res.status(500).json(err)
        else res.status(200).json(status)
    })
});
module.exports = router