const express = require("express");
const app = express();
const mongoose = require("mongoose");
const bodyParser = require("body-parser");
const { connectToMongoDB } = require("./connects");
const port = 3000;

//database connection

connectToMongoDB("mongodb://127.0.0.1:27017/saral")
  .then(() => {
    console.log("Connected to MongoDB");
  })
  .catch((error) => {
    console.error("Error connecting to MongoDB:", error.message);
  });

// User model
const User = mongoose.model("User", {
  name: String,
  location: String,
  contactNumber: String,
  altContactNumber: String,
  message: String,
});

app.use(bodyParser.json());

// POST endpoint to submit user information
app.post("/api/users", async (req, res) => {
  try {
    const newUser = new User(req.body);
    await newUser.save();
    res.status(201).send(newUser);
  } catch (err) {
    res.status(400).send(err);
  }
});

// GET endpoint to fetch all users
app.get("/api/users", async (req, res) => {
  try {
    const users = await User.find();
    res.send(users);
  } catch (err) {
    res.status(500).send(err);
  }
});

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
