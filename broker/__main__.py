import os

from init import create_app


def main():
    """
    Main class for local execution.

    Use a proper webserver in production!
    """
    port = int(os.getenv('PORT', '80'))
    app = create_app()
    app.run('0.0.0.0', port=port, debug=True)


if __name__ == '__main__':
    main()
