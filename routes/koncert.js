var ar;

module.exports = function(app) {
    app.get('/koncert', function(req, res) { 
        let sql = `SELECT * FROM arrangementer`;
        db.query(sql, [], function (req, arrangementer) {
        res.render('pages/koncert', {
            arrangementer: arrangementer
        });
    })
    });
}