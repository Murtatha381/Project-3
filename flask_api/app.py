from flask import Flask, request, jsonify

app = Flask(__name__)

# Define a simple route that accepts GET requests


@app.route('/api/hello', methods=['GET'])
def hello():
    return jsonify(message='Hello, World!')


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
