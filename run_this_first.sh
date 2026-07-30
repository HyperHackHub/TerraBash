#!/bin/bash 

#!/bin/bash

echo "Setting executable permissions..."

find . -type f -name "*.sh" -exec chmod +x {} \;

echo "Setup completed!"
echo "Run TerraBash using:"
echo "./terrabash.sh"
