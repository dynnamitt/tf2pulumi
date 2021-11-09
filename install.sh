#!/bin/sh
DEST=${1:-~/.local/bin}
ln -v -s $(find "$(cd ..; pwd)" -type f -name tf2pulumi2) $DEST

echo "Provider TYPES/cache download :"

echo " - AWS ..."
curl https://raw.githubusercontent.com/pulumi/pulumi-aws/master/provider/cmd/pulumi-resource-aws/schema.json \
| jq '.types|keys' > .tf2pulumi2.aws.json
