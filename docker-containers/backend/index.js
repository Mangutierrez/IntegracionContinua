const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
const app = express();
const port = 3000;

app.use(cors());


app.use((req, res, next) => {
  res.setHeader('Content-Type', 'application/json; charset=utf-8');
  next();
});

const connection = mysql.createConnection({
  host: 'db',
  user: 'root',
  password: 'db_mypassword',
  database: 'web_db',
  charset: 'utf8mb4' 
});

connection.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
    return;
  }
  console.log('Connected to MySQL');
});

app.get('/recipes', (req, res) => {
  connection.query('SELECT * FROM recipes', (error, results) => {
    if (error) throw error;
    res.json(results);
  });
});

app.listen(port, () => {
  console.log(`App running on http://localhost:${port}`);
});
