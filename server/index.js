const express = require('express');
const http = require('http');
const mongoose = require('mongoose');

const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);


var io = require("socket.io")(server);

app.use(express.json());

const DB = "mongodb+srv://juggad:test123@cluster0.gmuocbw.mongodb.net/?retryWrites=true&w=majority";

io.on("connection", (socket) => {
console.log("connected");
});

mongoose.connect(DB).then(() => {
console.log("DB done");
}).catch((e) => {
console.log(e);
});

server.listen(port,'0.0.0.0', () => {
console.log(`done ${port}`);
});
