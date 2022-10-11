var express = require('express');
var bodyParser = require('body-parser');
require('dotenv').config();

var app = express();

app.use(bodyParser.json());

var student = require('./routes/student');
app.use('/student', student)

app.get('/', (req, res) => {
    res.send('Hello world!')
})
var port = process.env.PORT || 3001;

app.set('port', port);
app.listen(port, () => console.log(`Example app listening on port ${port}!`));

module.exports = app;