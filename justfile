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
    python3 src/manage.py runserver

lint:
    ruff check .

superlint:
    pylint src
    pylint --disable=E0401 tests
    flake8 src
    flake8 tests
