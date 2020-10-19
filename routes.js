const express = require('express');
const todos = require("./todos");

const router = express.Router();

router.get("/", function(req, res) {
  res.sendFile('./build/index.html');
});

module.exports = router;
