#!/usr/bin/bash

SCRIPT_ROOT=$(dirname $(readlink -f $0))
DIRS=$(find "${SCRIPT_ROOT}" -mindepth 1 -maxdepth 1 -type d)

BUILD="${SCRIPT_ROOT}/build"
mkdir -p "${BUILD}"
pushd ${BUILD} > /dev/null

for dir in ${DIRS}; do
    echo $(basename "${dir}")
    echo "  no args"
    cmake "${dir}" | grep -E "After|Before" | sed 's/^/    /'
    echo "  reconfigure with args"
    cmake "${dir}" -DVALUE=1.1.0 | grep -E "After|Before|But" | sed 's/^/    /'
    echo "  reconfigure no args"
    cmake "${dir}" | grep -E "After|Before|But" | sed 's/^/    /'
    find "${BUILD}" -mindepth 1 -delete
    echo ""
done

popd > /dev/null
find "${BUILD}" -type d -delete
