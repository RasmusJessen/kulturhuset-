var express = require('express');
var app = express();

module.exports = function(app) {
    app.get('/arrar', function(req, res) {      
        res.render('pages/arrar');
    });
}