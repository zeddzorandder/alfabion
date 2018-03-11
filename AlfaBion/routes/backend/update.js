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

router.get('/:id', function(req, res, next) {
    var sql = "SELECT * from product WHERE id = ?";
    var id = req.param("id");
    connection.query(sql ,id , function(err, rows) {
        if (!err) {

            res.render('backend/update', {title: 'Alfa Bion', id: id, data: rows});
        }
        else {
            console.log('Error while performing Query.');
        }

    });
});

router.post('/submit', function (req, res, next) {

    var sql = "UPDATE `product` SET ? WHERE id = ?";
    var id = req.body.id;
    var post  = {title: req.body.title, description: req.body.description, img: req.body.img, price:req.body.price, category: req.body.category };
    connection.query(sql,[post,id], function (err, result) {
        if (!err) {

            res.redirect('/list');
        }
        else {
            console.log(err);
        }
    });

});

module.exports = router;
