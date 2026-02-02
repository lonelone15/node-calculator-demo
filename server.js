const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('<h1>Hello World!</h1><p>Welcome to my personal project page.</p>');
});

app.listen(port, () => {
  console.log(`Web server running on port ${port}`);
});
