#!/bin/env bash

outputName="clox"

# -g: Embed debug symbols into the binary
# -I<dir>: Search <dir> when resolving `#include "..."`
# -W<option>:
#    - all: Show all warnings
#    - error: Any warnings results in compile error

gcc -g -Isrc/headers -Wall -Werror ./src/*.c -o "${outputName}" || exit