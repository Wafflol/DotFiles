#!/bin/bash

APP="$HOME/Transfers/server.py"
PORT=8080

# Check for -k argument
if [[ "$1" == "-k" ]]; then
    echo "Killing Flask and ngrok processes..."
    pkill -f "python3 $APP"
    pkill -f "ngrok http $PORT"
    echo "Processes killed."
    exit 0
fi

# Start Flask server
nohup python3 "$APP" &>/dev/null &
FLASK_PID=$!
echo "Flask PID: $FLASK_PID"

sleep 2

# Start ngrok
echo "Starting ngrok on port $PORT..."
ngrok http $PORT &

echo "Server startup complete."
echo "Use 'ps aux | grep python' to check processes."
