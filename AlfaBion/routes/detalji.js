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

connection.query('SELECT * from product WHERE id = ${req.params.id}', function(err, rows) {
    if (!err){

        console.log(rows);
        router.get('/', function(req, res, next) {
            console.log('boris');
            res.render('detalji', { title: 'Alfa Bion', data: rows });
        });
    }





    else{
        console.log('Error while performing Query.');
    }


});




module.exports = router;