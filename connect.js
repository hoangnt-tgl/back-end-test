
var mysql = require('mysql')

const HOST = process.env.HOST
const USER = process.env.USER
const PASS = process.env.PASS
const DATABASE = process.env.DATABASE
var conn = mysql.createConnection({
    // host: HOST,
    // user: USER,
    // password: PASS,
    // database: DATABASE,
    host: "us-cdbr-east-06.cleardb.net",
    user: "b31dd452c4bb27",
    password: "fb488890",
    database: "heroku_6965ea3352c823d"
});
function handleConnect() {
    conn.connect(function (err) {
        if (err) setTimeout(handleConnect, 2000);
        console.log("connected")
    })
    conn.on('error', function (err) {
        console.log('db error', err);
        if (err.code === 'PROTOCOL_CONNECTION_LOST') { // Connection to the MySQL server is usually
            handleConnect();                         // lost due to either server restart, or a
        } else {                                      // connnection idle timeout (the wait_timeout
            throw err;                                  // server variable configures this)
        }
    });
}

handleConnect()
module.exports = conn

