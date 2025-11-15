#!/bin/bash

echo ${PWD}
echo "$(pwd)"
docker run -p 4000:4000 -v /c/Users/perni/IdeaProjects/markdown-cv/:/srv/jekyll my-jekyll

#TODO - The PWD does not work.
