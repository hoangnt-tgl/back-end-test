var express = require('express');
var bodyParser = require('body-parser');

var app = express();

app.use(bodyParser.json());

var student = require('./routes/student');
app.use('/student', student)

var port = process.env.PORT || 3000;
app.set('port', port);
app.listen(port, () => console.log(`Example app listening on port ${port}!`));

module.exports = app;