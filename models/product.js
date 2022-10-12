var express = require('express')
var connect = require('../connect')

module.exports.getAllProduct = function(callback){
    var sql = `SELECT * from products`
    connect.query(sql, callback);
}
module.exports.getProductById = function(id , callback){
    var sql = `SELECT * from products WHERE id = ${id}`
    connect.query(sql, callback);
}
