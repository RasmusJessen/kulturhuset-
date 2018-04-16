
module.exports = function(app) {
    app.get('/biograf', function(req, res) { 
        let sql = `SELECT * FROM arrangementer`;
        db.query(sql, [], function (req, arrangementer) {
        res.render('pages/biograf', {
            arrangementer: arrangementer
        });
    })
    });
}