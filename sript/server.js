// server.js
const http = require("http");

const server = http.createServer((req, res) => {
  res.end("✅ Codespace is alive! " + new Date());
});

server.listen(8089, () => {
  console.log("✅ HTTP server running on port 8089");
});
