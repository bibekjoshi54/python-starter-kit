#!/bin/bash

usage() {
    echo "Usage: $0 [-c] [-e] [-i]" 1>&2
    echo "Options:" 1>&2
    echo "  -c  Execute coverage-report.sh" 1>&2
    echo "  -e  Execute e2e-test.sh" 1>&2
    echo "  -i  Execute integration-test.sh" 1>&2
    exit 1
}

bash ./scripts/setup.sh
# Parse options
while getopts ":cei" opt; do
    case ${opt} in
        c)
          ./scripts/coverage-report.sh
            ;;
        e)
          ./scripts/e2e-test.sh
            ;;
        i)
           ./scripts/integration-test.sh
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND -1))
