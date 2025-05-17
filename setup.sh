#!/bin/bash

if ! command -v git &> /dev/null; then
    echo "you need to install git"
    exit 1
fi

git clone https://github.com/Cavvoh/VintageStoryServerArm64.git clone
cp -r clone/. .
rm -rf clone

rm -rf .git .github Dockerfile setup.sh

echo ""
echo "Setup completed"
echo "run 'nano/vi compose.yaml' to edit the container settings"
echo "run 'docker compose up -d' to start the container"
echo "run 'docker attach vsserver' to run Vintage Story server commands"
echo ""