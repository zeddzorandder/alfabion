var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');

var index = require('./routes/index');
var users = require('./routes/users');
var proizvodi = require('./routes/proizvodi');
var login = require('./routes/backend/login');
var create = require('./routes/backend/create');
var update = require('./routes/backend/update');
var del = require('./routes/backend/delete');
var list = require('./routes/backend/list');

/* konekcija na bazu */
var mysql      = require('mysql');
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'alfabion'
});

connection.connect();


var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', index);
app.use('/users', users);
app.use('/proizvodi', proizvodi);
app.use('/create', create);
app.use('/update', update);
app.use('/delete', del);
app.use('/list', list);

app.get('/login', function(req, res) {
    connection.query('SELECT * from users', function(err, rows) {
        if (!err){
            res.render('backend/login', { title: 'Alfa Bion', data: rows });
        }
        else{
            console.log('Error while performing Query.');
        }
    });
});

app.get('/detalji/:id', function(req, res) {
    connection.query('SELECT * from product', function(err, rows) {
        if (!err){
            var id = req.param("id");
            res.render('detalji', { title: 'Alfa Bion', id: id, data: rows });
        }
        else{
            console.log('Error while performing Query.');
        }
    });
});

app.get('/admin', function(req, res) {
    res.render('backend/admin', { title: 'Alfa Bion' });
});






// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
