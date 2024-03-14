// File: routes/homepage.js
const express = require('express');
const router = express.Router();
const { getArtworks } = require('../controllers/homepage');

router.get('/getartworks/:keyword', getArtworks);

module.exports = router;

