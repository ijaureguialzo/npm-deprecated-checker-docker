#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Uso: ./dep-check.sh TOKEN_GITHUB directorio_que_contiene_el_package_json"
else
    docker run \
        --volume "$2:/src" \
        --rm dep-checker /bin/sh -c "python /dep-checker/scan_dependencies.py --github-token $1 /src/package.json"
fi
