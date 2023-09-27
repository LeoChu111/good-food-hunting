const pg = require('pg')
const bcrypt = require('bcrypt')
const db = new pg.Pool({
    database: 'goodfoodhunting'
})
const email = 'leo@gmail.com';
const password = 'pudding';
const saltRounds = 10;

const sql = `
INSERT INTO users (email, password_digest)
VALUES ($1, $2);
`
bcrypt.genSalt(saltRounds, function(err, salt) {
    bcrypt.hash(password, salt, function(err, hash) {
        // Store hash in your password DB.
        db.query(sql, [email, hash], (err, dbRes) => {
            if (err) {
                console.log(err);
            } else {
                console.log('user created');
            }
        })
    });
});

