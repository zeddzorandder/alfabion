var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var passport = require('passport')
var LocalStrategy = require('passport-local').Strategy
var session = require('express-session')
var expressSession = require('express-session');


var indexRouter = require('./routes/index');
var vesti = require('./routes/vesti');
var vest  = require('./routes/vest');
var recepti = require('./routes/recepti');
var recept = require('./routes/recept');
var onama = require('./routes/onama');
var kontakt = require('./routes/kontakt');

var login = require('./routes/backend/login');
var admin = require('./routes/backend/admin');
var create = require('./routes/backend/create');
var createrecepti = require('./routes/backend/createrecepti');
var users = require('./routes/backend/users');
var update = require('./routes/backend/update');
var del = require('./routes/backend/delete');
var list = require('./routes/backend/list');
var listrecepti = require('./routes/backend/listrecepti');
var messages = require('./routes/backend/poruke');

/* konekcija na bazu */
var mysql      = require('mysql');
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'it255'
});

connection.connect();




var app = express();

app.use(expressSession({secret: 'alisa'}));
app.use(passport.initialize());
app.use(passport.session());

passport.serializeUser(function(user, done) {
    done(null, user._id);
});

passport.deserializeUser(function(id, done) {
    User.findById(id, function(err, user) {
        done(err, user);
    });
});

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/vesti', vesti);
app.use('/vest', vest);
app.use('/recepti', recepti);
app.use('/recept', recept);
app.use('/onama', onama);
app.use('/kontakt', kontakt);

app.use('/login', login);
app.use('/admin', admin);
app.use('/create', create);
app.use('/createrecepti', createrecepti);
app.use('/users', users);
app.use('/update', update);
app.use('/delete', del);
app.use('/list', list);
app.use('/listrecepti', listrecepti);
app.use('/messages', messages);




// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
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
