var mysql      = require('mysql');
// var connection = mysql.createConnection({
//   host: process.env.DB_HOST,
//   port: process.env.DB_PORT,
//   user     : process.env.DB_USER,
//   password : process.env.DB_PASS,
//   database : process.env.DB_NAME
// });

var connection = mysql.createConnection({
  user     : 'root',
  password : '',
  database : 'sdc2'
});


connection.connect(function(err) {
  if (err) {
    console.log('TESTING ERROR CONNECTION')
    console.log(err)
    return;
  }
  console.log('mysql connected');
});


module.exports= connection;