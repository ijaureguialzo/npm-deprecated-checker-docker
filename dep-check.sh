#!/bin/bash

docker run \
    --volume "$2:/src" \
    --rm dep-checker /bin/sh -c "python /dep-checker/scan_dependencies.py --github-token $1 /src/package.json"
