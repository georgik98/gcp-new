from flask import Flask, jsonify
import requests

app = Flask(__name__)

@app.route('/')
def index():
    response = requests.get('http://backend:5001/api/data')
    data = response.json()
    return jsonify(data)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
