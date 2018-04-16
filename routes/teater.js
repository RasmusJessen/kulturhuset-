
module.exports = function(app) {
    app.get('/teater', function(req, res) { 
        let sql = `SELECT * FROM arrangementer`;
        db.query(sql, [], function (req, arrangementer) {
        res.render('pages/teater', {
            arrangementer: arrangementer
        });
    })
    });
}