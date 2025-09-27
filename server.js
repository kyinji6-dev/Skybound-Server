const WebSocket = require('ws');
const port = process.env.PORT || 3000;
const server = new WebSocket.Server({ port });

server.on('connection', socket => {
  console.log('Client connected');
  socket.on('message', msg => {
    console.log('Received:', msg);
  });
});
