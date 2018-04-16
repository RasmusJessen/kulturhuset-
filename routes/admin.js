var ar;

module.exports = function(app) {
    app.get('/admin', function(req, res) { 
        let sql = `SELECT * FROM arrangementer`;
        db.query(sql, [], function (req, arrangementer) {
        res.render('pages/admin', {
            arrangementer: arrangementer
        });
    })
    });

    app.post('/signup', function (req, res) {
		var message = '';
		var post = req.body;
		var name = post.user_name;
		var pass = post.password;
		var fname = post.first_name;
		var lname = post.last_name;
		var mob = post.mob_no;

		// TODO: Tilføj validering af resten af de indtastede oplysninger!

		if (name != "" && pass != "") {
		
            var sql = `
               
				`;

			db.query(sql, [fname, lname, mob, name, pass], function (err, result) {
				if (err) {
					console.log ("signup error: " + err);
				}
				else {
					message = "Succesfully! Your account has been created.";
					res.render('pages/signup', {
						message: message,
						messageType: "alert-success",
						showForm: false
					});
				}

			});
		}
		else {
			message = "Username and password are required!";
			res.render('pages/signup', {
				message: message,
				messageType: "alert-danger"
			});
		}
	});
}