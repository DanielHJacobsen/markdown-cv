#!/bin/bash

docker run -p 4000:4000 -v "$(pwd -W)/:/srv/jekyll/" my-jekyll

#TODO - The PWD does not work.
