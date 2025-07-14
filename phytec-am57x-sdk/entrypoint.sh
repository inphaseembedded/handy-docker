#!/bin/bash
set -e

# Check if oe-init-build-env exists
if [ ! -f /workspace/oe-init-build-env ]; then
    echo "ERROR: /workspace/oe-init-build-env not found. Make sure to mount your poky directory."
    exit 1
fi

# Source the Yocto environment
# Use bash -c so that 'source' works properly
exec bash -c "source /workspace/oe-init-build-env && exec bash"

