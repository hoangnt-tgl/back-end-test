var mysql = require('mysql')
require('dotenv').config();
const HOST = process.env.HOST
const USER = process.env.USER
const PASS = process.env.PASS
const DATABASE = process.env.DATABASE
var conn = mysql.createConnection({
    host: HOST,
    user: USER,
    password: PASS,
    database: DATABASE
});
conn.connect(function(err) {
    if (err) throw err;
    console.log("connected")
})

module.exports = conn