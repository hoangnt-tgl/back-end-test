var express = require('express');
var bodyParser = require('body-parser');
var cors = require('cors')
var app = express();

app.use(bodyParser.json());

app.use(cors())
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

var product = require('./routes/product');
var sendmail = require('./routes/send-mail');
var payment = require('./routes/payment');

app.use('/images', express.static('images'));
app.use('/api/send-mail', sendmail);
app.use('/api/product', product);
app.use('/api/payment', payment);

app.get('/', (req, res) => {
    res.send('Hello world!')
})

var port = process.env.PORT || 3001;

app.set('port', port);
app.listen(port, () => console.log(`Example app listening on port ${port}!`));

module.exports = app;