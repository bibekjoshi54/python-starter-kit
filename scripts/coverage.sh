#!/usr/bin/env bash

set -e
set -x

export PYTHONPATH=./docs
poetry run coverage run -m pytest tests/unit ${@}
