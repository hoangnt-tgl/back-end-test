var express = require('express');
var bodyParser = require('body-parser');

var app = express();

app.use(bodyParser.json());


var product = require('./routes/product');
var sendmail = require('./routes/send-mail');

app.use('/images', express.static('images'));
app.use('/api/send-mail', sendmail);
app.use('/api/product', product);

app.get('/', (req, res) => {
    res.send('Hello world!')
})
var port = process.env.PORT || 3000;

app.set('port', port);
app.listen(port, () => console.log(`Example app listening on port ${port}!`));

module.exports = app;