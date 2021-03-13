#!/usr/bin/env bash

set -euxo pipefail

echo "Running linters and formatters..."

isort democritus_dicts/ tests/

black democritus_dicts/ tests/

mypy democritus_dicts/ tests/

pylint --fail-under 9 democritus_dicts/*.py

flake8 democritus_dicts/ tests/

bandit -r democritus_dicts/

# we run black again at the end to undo any odd changes made by any of the linters above
black democritus_dicts/ tests/
