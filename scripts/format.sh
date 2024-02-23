#!/bin/sh -e
set -x

PREFIX_CMD="poetry run"

${PREFIX_CMD} ruff src tests scripts --fix
${PREFIX_CMD} ruff format src tests scripts
