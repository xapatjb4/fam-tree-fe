import express from 'express';
import path from 'path';

const app = express();
const port = 3000;

app.use(express.static(path.join(__dirname, '..', 'public', 'appBuild')));

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '..','public', 'appBuild', 'index.html'));
});
app.listen(port, err => {
  if (err) {
    return console.error(err);
  }
  return console.log(`server is listening on ${port}`);
});