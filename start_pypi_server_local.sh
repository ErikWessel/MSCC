#!/bin/bash

# Starts a PyPI-Server that serves the packages from the "lib" subdirectory under the specified port
# that does not require any kind of authentification.
# This helps with installing local packages that are not published to pypi.org
port=8060
package_dir=lib

python3 -m pip install pypiserver

echo "Starting PyPI-server on port ${port} from directory \"${package_dir}\""
python3 -m pypiserver run -p ${port} -P . -a . ${package_dir}
