const express = require("express");
const path 	  = require('path');

// App
const app = express();

// Set port
const port = process.env.PORT || "5000";
app.set("port", port);

app.use(express.static(path.join(__dirname, 'build'))); 

// Server
app.listen(port, () => console.log(`Server running on localhost:${port}`));
