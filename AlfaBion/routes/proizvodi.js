var express = require('express');
var router = express.Router();


/* konekcija na bazu */
var mysql      = require('mysql');
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'alfabion'
});


connection.connect();

connection.query('SELECT * from product', function(err, rows) {
    if (!err){

        router.get('/', function(req, res, next) {

            res.render('proizvodi', { title: 'Alfa Bion', data: rows });
        });
    }





    else{
        console.log('Error while performing Query.');
    }


});




module.exports = router;
