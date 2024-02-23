#!/usr/bin/env bash

set -e
set -x

PREFIX_CMD="poetry run"


${PREFIX_CMD} mypy src
${PREFIX_CMD} ruff src tests scripts
