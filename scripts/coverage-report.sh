#!/usr/bin/env bash

set -e
set -x

PREFIX_CMD="poetry run"

bash scripts/coverage.sh ${@}
${PREFIX_CMD} coverage combine
${PREFIX_CMD} coverage report --show-missing
${PREFIX_CMD} coverage html
