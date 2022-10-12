
var mysql = require('mysql')

// const HOST = process.env.HOST 
// const USER = process.env.USER 
// const PASS = process.env.PASS 
// const DATABASE = process.env.DATABASE

const HOST = "us-cdbr-east-06.cleardb.net"
const USER = "b31dd452c4bb27"
const PASS = "fb488890"
const DATABASE = "heroku_6965ea3352c823d"

var db_config = {
    host: HOST,
    user: USER,
    password: PASS,
    database: DATABASE
}

var conn;

function handleConnect() {
    conn = mysql.createConnection(db_config);

    conn.connect(function (err) {
        if (err) {
            console.log('Database connection failed')
            setTimeout(handleConnect, 2000);
        } else {
            console.log('Database connection successful')
        }
    })
    conn.on('error', function (err) {
        if (err.code === 'PROTOCOL_CONNECTION_LOST') { // Connection to the MySQL server is usually
            handleConnect();                         // lost due to either server restart, or a
        } else {                                      // connnection idle timeout (the wait_timeout
            throw err;                                  // server variable configures this)
        }
    });
}
handleConnect()

module.exports = conn

