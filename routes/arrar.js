
module.exports = function(app) {
    app.get('/arrar', function(req, res) { 
        let sql = `SELECT * FROM arrangementer`;
        db.query(sql, [], function (req, arrangementer) {
        res.render('pages/arrar', {
            arrangementer: arrangementer
        });
    })
    });
}
