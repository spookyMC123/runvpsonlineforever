#!/bin/bash
# Made by Joy
#clear
clear
# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}Please run this script as root.${NC}"
  exit 1
fi

echo "                            power by InfinityForge                                           "

echo "* Installing Dependencies"
sudo apt update


echo "📦 Installing 24/7 server..."

# Setup directories
mkdir -p 24/7/sever
cd 24/7/sever || exit

# Write docker-compose.yml
cat <<'EOF' > server.js
// server.js
const http = require("http");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end("✅ Codespace is alive! " + new Date());
});

server.listen(8089, () => {
  console.log("✅ HTTP server running on port 8089"
});


EOF

# run server
node server.js

while true; do
  curl -s http://localhost:8089 > /dev/null
  echo "🟢 Self ping: $(date)"
  sleep 240
done


echo "✅ server is now running!"
echo "🌐 copy it :go to port and copy http://localhost:8089 or your external IP on port 8089"
