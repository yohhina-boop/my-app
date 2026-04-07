from flask import Flask
from app.utils import add

app = Flask(__name__)

@app.route("/")
def index():
    return "Hello from Docker CI/CD! (Updated)"

@app.route("/add/<int:a>/<int:b>")
def add_route(a, b):
    return f"Result: {add(a, b)}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
