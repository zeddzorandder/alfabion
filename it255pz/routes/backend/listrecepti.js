var express = require('express');
var router = express.Router();

/* konekcija na bazu */
var mysql      = require('mysql');
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'it255'
});

connection.connect();

router.get('/', function(req, res, next) {
    var sql = "SELECT * from recepti";
    connection.query(sql, function(err, rows) {
        if (!err) {
            res.render('backend/listrecepti', { title: 'View', data: rows });
        }
        else {
            console.log('Error while performing Query.');
        }

    });
});

module.exports = router;
