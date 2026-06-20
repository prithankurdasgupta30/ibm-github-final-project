from flask import Flask
from flask_talisman import Talisman


def create_app():
    """Create and configure the Flask application."""

    app = Flask(__name__)

    Talisman(
        app,
        force_https=False,
        strict_transport_security=True,
        strict_transport_security_max_age=31536000,
        strict_transport_security_include_subdomains=True,
        strict_transport_security_preload=True,
        content_security_policy={
            "default-src": "'self'",
            "script-src": "'self'",
            "style-src": "'self' 'unsafe-inline'",
            "img-src": "'self' data:",
        },
        session_cookie_secure=False,
        session_cookie_http_only=True,
        frame_options="DENY",
        referrer_policy="strict-origin-when-cross-origin",
    )

    from service.routes import api
    app.register_blueprint(api)

    return app
