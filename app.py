import os
import socket

from flask import Flask, jsonify

app = Flask(__name__)
PORT = int(os.getenv("APP_PORT", "32777"))


@app.route("/")
def index():
    return jsonify({
        "message": "Hello, World!",
        "hostname": socket.gethostname(),
        "port": PORT,
    })


@app.route("/health")
def health():
    return jsonify({"status": "ok"}), 200


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=PORT)
