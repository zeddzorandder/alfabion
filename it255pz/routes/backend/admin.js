var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('backend/admin', { title: 'Admin' });
});

module.exports = router;