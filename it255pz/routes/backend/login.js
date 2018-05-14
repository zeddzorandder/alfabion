var express = require('express');
var router = express.Router();
var LocalStrategy   = require('passport-local').Strategy;


/* konekcija na bazu */
var mysql      = require('mysql');
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'it255'
});

connection.connect();


/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('backend/login', { title: 'Admin' });
});




module.exports = router;
