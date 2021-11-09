#!/bin/sh
DEST=${1:-~/.local/bin}
ln -v -s $(find "$(cd ..; pwd)" -type f -name tf2pulumi2) $DEST
