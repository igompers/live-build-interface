#!/bin/bash

set -e

# recreate build information text file
touch ./build-information.txt

# start a terminal for logging and then tail the output in another
terminator -e "sh ./logger.sh"
terminator -e "tail -f ./build-information.txt"
