// File: controllers/homepage.js
const mysql = require('mysql');
const { response } = require('express');
const env = require('../env.js');
const config = require('../dbconfig.js')[env];

const getArtworks = (req, res = response) => {
  const { keyword } = req.params;
  // Create connection to MySQL database
  const dbcon = mysql.createConnection(config);

  // SQL Query
  const petDetailsQuery = `SELECT * FROM pets WHERE
  id LIKE '%${keyword}%' OR
  gender LIKE '%${keyword}%' OR
  gender LIKE '%${keyword}%' OR
  name LIKE '%${keyword}%' OR
  species LIKE '%${keyword}%' OR
  sub_species LIKE '%${keyword}%' OR
  age LIKE '%${keyword}%' OR
  ownner_id LIKE '%${keyword}%' OR
  phone LIKE '%${keyword}%'`;

  // Execute query
  dbcon.query(petDetailsQuery, (err, pet) => {
    if (err) {
      return res.status(500).json({ error: 'Internal Server Error' });
    }

    if (pet.length > 0) {
      console.log(pet);
      res.json(pet);
    } else {
      return res.status(401).json({ message: 'Pet not found!' });
    }

    // Close connection after query is done
    dbcon.end();
  });
};

module.exports = {
  getArtworks,
};
