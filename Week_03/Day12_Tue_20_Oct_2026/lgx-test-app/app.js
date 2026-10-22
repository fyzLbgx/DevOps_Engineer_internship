const express = require("express");
const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
  res.json({ message: "Hello World from lgx-test!-Version2" });
});

app.get("/health", (req, res) => {
  res.json({ status: "ok", time: new Date() });
});

app.listen(PORT, () => {
  console.log(`API running on port ${PORT}`);
});
