#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo $'\n⚠️  Please provide a project name to scaffold!\n'
    exit 111
fi

projectDir=~/Documents/Projects/
cd $projectDir

if [ -d "$1" ]; then
    echo $'\n⚠️  The provided directory already exists: '$projectDir$1
else
    echo ""
    read -p "Is this a Node project? (y/N): " isNode

    echo $'\n🛠️  Creating folder with the name: '$1
    mkdir $1 && cd $1

    echo $'\n🏁  Running "git init"\n'
    git init

    echo $'\n📕  Adding README.md file\n'
    touch README.md && echo "# $1" > README.md
    
    if [[ $isNode == "y" ]]; then
        echo $'\n🏃🏾  running "npm init -y"\n'
        npm init -y
    fi

    echo $'\n📕  Project root: '$projectDir$1

    echo ""
    echo $'\n✏️  Launching Visual Studio Code\n'
    code .

    echo $'\n🎉  Happy coding!\n'
fi
