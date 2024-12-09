from flask import Flask

def create_app():
    app = Flask(__name__)

    # Import and register routes
    with app.app_context():
        from .routes import api_blueprint
        app.register_blueprint(api_blueprint)

    return app


# This block is used for local development but can cause issues in production
if __name__ == "__main__":
    app = create_app()
    app.run(host="0.0.0.0", port=8080)
