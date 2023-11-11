format_test_lint:
    black src tests
    pytest
    ruff check --fix .

install:
    pip install -r requirements.txt

install_dev:
    pip install -r .devcontainer/requirements-dev.txt

watch:
    pytest -f

code:
    code README.md justfile

dev:
    python manage.py migrate && python manage.py collectstatic --noinput && gunicorn mysite.wsgi

lint:
    ruff check .

superlint:
    pylint .
    flake8 .
