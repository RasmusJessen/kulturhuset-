var ar;

module.exports = function(app) {
    app.post('/kontakt', function (req, res) {
        var message = '';
        var post = req.body;
        var navn = post.navn;
        var email = post.email;
        var besked = post.besked;
    
        if (navn != "" && email != "" && besked != "") {
            var sql = `
                INSERT INTO kontakt (navn, email, besked) VALUES (?, ?, ?)
                `;
    
            db.query(sql, [navn, email, besked], function (err, kontakt) {
                if (err) {
                    console.log ("signup error: " + err);
                }
                else {
                    res.render('pages/kontakt', {
                        kontakt: kontakt,
                        arrangementer:ar,
                        showForm: false
                    });
                }
    
            });
        }

    });

    app.get('/kontakt', function(req, res) { 
        let sql = `SELECT * FROM arrangementer`;
        db.query(sql, [], function (req, arrangementer) {
        ar = arrangementer;
        res.render('pages/kontakt', {
            arrangementer: arrangementer
        });
    })
    });
}