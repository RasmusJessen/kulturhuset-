
module.exports = function(app) {
    app.get('/bestil', function(req, res) { 
        let sql = `SELECT * FROM arrangementer`;
        db.query(sql, [], function (req, arrangementer) {
        res.render('pages/bestil', {
            arrangementer: arrangementer
        });
    })
    });
}