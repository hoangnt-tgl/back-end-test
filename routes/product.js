var express = require('express');
var router = express.Router();
var Product = require('../models/student');

router.get('/getall', function(req, res, next) {
    Product.getAllProduct(function(err, result){
        if (err) res.status(500).json(err)
        else if (result){
            res.status(200).json(result)
        }
    })
})

router.get('/detail/:id', function(req, res, next){
    var id = req.params.id
    Product.getProductById(id, function(err, result){
        if (err) res.status(500).json(err)
        else if (result){
            res.status(200).json(result)
        } else {
            res.status(404).json({message: "Not Found"})
        }
    })
})

module.exports = router