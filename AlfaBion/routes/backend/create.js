var express = require('express');
var multer = require('multer');
var path = require('path');
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




router.get('/', function(req, res, next) {
    res.render('backend/create', {title: 'Alfa Bion'});
});

router.post('/submit', function (req, res, next) {


    let sql = "INSERT INTO `product` SET ?";
    let post  = {title: req.body.title, description: req.body.description, img: req.body.img, price:req.body.price, category: req.body.category };
    connection.query(sql,post, function (err, result) {
        if (!err) {
            res.redirect('/admin');
        }
        else {
            console.log(err);
        }
    });

});

module.exports = router;
