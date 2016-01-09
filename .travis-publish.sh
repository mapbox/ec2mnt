#!/bin/bash

set -eu

if git describe --tags --exact-match 2> /dev/null; then
    pip install awscli
    tag=$(git describe --tags --exact-match)
    aws s3 cp --acl public-read "$(dirname $0)/bin/ec2mnt" s3://mapbox/apps/ec2mnt/$tag
fi

