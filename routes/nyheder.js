var ar;

module.exports = function(app) {
    app.get('/nyheder', function(req, res) { 
        let sql = `SELECT * FROM arrangementer`;
        db.query(sql, [], function (req, arrangementer) {
        res.render('pages/nyheder', {
            arrangementer: arrangementer
        });
    })
    });
}