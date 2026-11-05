const express = require('express');
const { add, multiply } = require('./math');

const app = express();

app.get('/', (req, res) => {
  res.send(`2 + 3 = ${add(2, 3)}, 2 * 4 = ${multiply(2, 4)}\n`);
});

app.listen(3000, () => {
  console.log('Server running on port 3000');
});
