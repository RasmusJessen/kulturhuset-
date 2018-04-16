
module.exports = function(app) {
    app.get('/fordrag', function(req, res) { 
        let sql = `SELECT * FROM arrangementer`;
        db.query(sql, [], function (req, arrangementer) {
        res.render('pages/fordrag', {
            arrangementer: arrangementer
        });
    })
    });
}