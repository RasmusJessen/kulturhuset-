var ar;

module.exports = function(app) {
    app.post('/home', function (req, res) {
        var message = '';
        var post = req.body;
        var email = post.email;
    
        if (email != "") {
            var sql = `
                INSERT INTO nyhedsbrev (email) VALUES (?)
                `;
    
            db.query(sql, [email], function (err, nyhedsbrev) {
                if (err) {
                    console.log ("signup error: " + err);
                }
                else {
                    res.render('pages/home', {
                        nyhedsbrev: nyhedsbrev,
                        arrangementer:ar,
                        showForm: false
                    });
                }
    
            });
        }

    });

    app.get('/home', function(req, res) { 
        let sql = `SELECT * FROM arrangementer`;
        db.query(sql, [], function (req, arrangementer) {
            ar = arrangementer;
            res.render('pages/home', {
                arrangementer: arrangementer
            });
    });
    });
    
}