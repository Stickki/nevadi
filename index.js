const express = require("express");
const app = express();
const cors = require('cors');
const port = 3001;
const programmingLanguagesRouter = require("./routes/programmingLanguages");
app.use(express.json());
app.use(cors());
app.use(
  express.urlencoded({
    extended: true,
  })
);
app.get("/", (req, res) => {
  res.json({ message: "ok" });
});
app.use("/programming-languages", programmingLanguagesRouter);
app.use((err, req, res, next) => {
  const statusCode = err.statusCode || 500;
  console.error(err.message, err.stack);
  res.status(statusCode).json({ message: err.message });
  return;
});
app.use("/programming-languages", programmingLanguagesRouter);
app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});