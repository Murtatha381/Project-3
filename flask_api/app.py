import os
import sys
from flask import Flask, render_template, request, jsonify
project_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.append(project_dir)
import get_data

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

# Define a simple route that accepts GET requests
@app.route('/api/get_country_percentage', methods=['GET'])
def country_percentage():
    return jsonify(get_data.get_country_percentage())


@app.route('/api/post_example', methods=['POST'])
def post_example():
    # Access JSON data from the request
    data = request.json

    # Process the data (e.g., perform some operation)
    result = {"message": "Received POST data", "data": data}

    # Return a JSON response
    # 201 status code indicates a resource was created
    return jsonify(result), 201


if __name__ == '__main__':
    app.run(debug=True)
