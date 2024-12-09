from flask import Blueprint, jsonify

api_blueprint = Blueprint("api", __name__)

@api_blueprint.route("/api/hello", methods=["GET"])
def hello():
    return jsonify({"message": "Hello, World!"})
