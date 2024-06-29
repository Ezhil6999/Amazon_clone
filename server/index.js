const express = require('express');
const mangoose = require('mongoose');
const password = encodeURIComponent("");

const app = express();

const mongo_db_url = `mongodb+srv://ezhil6999:${password}@clusterfree.mcymyme.mongodb.net/?retryWrites=true&w=majority&appName=ClusterFree`;
app.use(express.json())

mangoose
  .connect(mongo_db_url)
  .then(() => {
    console.log("Connection Successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(3000, "0.0.0.0", () => {
  console.log(`connected at port ${3000}`);
});

