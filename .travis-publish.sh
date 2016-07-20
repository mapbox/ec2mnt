#!/bin/bash

set -eu

pip install awscli

aws s3 cp --acl public-read "$(dirname $0)/bin/ec2mnt" s3://mapbox/apps/ec2mnt/${TRAVIS_COMMIT}

aws s3 cp --acl=public-read --region us-east-1 \
    "$(dirname $0)/bin/ec2mnt" \
    "s3://mapbox-us-east-1/apps/ec2mnt/${TRAVIS_COMMIT}"

aws s3 cp --acl=public-read --region us-west-1 \
    "$(dirname $0)/bin/ec2mnt" \
    "s3://mapbox-us-west-1/apps/ec2mnt/${TRAVIS_COMMIT}"

aws s3 cp --acl=public-read --region us-west-2 \
    "$(dirname $0)/bin/ec2mnt" \
    "s3://mapbox-us-west-2/apps/ec2mnt/${TRAVIS_COMMIT}"

aws s3 cp --acl=public-read --region eu-west-1 \
    "$(dirname $0)/bin/ec2mnt" \
    "s3://mapbox-eu-west-1/apps/ec2mnt/${TRAVIS_COMMIT}"

aws s3 cp --acl=public-read --region eu-central-1 \
    "$(dirname $0)/bin/ec2mnt" \
    "s3://mapbox-eu-central-1/apps/ec2mnt/${TRAVIS_COMMIT}"

aws s3 cp --acl=public-read --region ap-northeast-1 \
    "$(dirname $0)/bin/ec2mnt" \
    "s3://mapbox-ap-northeast-1/apps/ec2mnt/${TRAVIS_COMMIT}"

aws s3 cp --acl=public-read --region ap-northeast-2 \
    "$(dirname $0)/bin/ec2mnt" \
    "s3://mapbox-ap-northeast-2/apps/ec2mnt/${TRAVIS_COMMIT}"

aws s3 cp --acl=public-read --region ap-southeast-1 \
    "$(dirname $0)/bin/ec2mnt" \
    "s3://mapbox-ap-southeast-1/apps/ec2mnt/${TRAVIS_COMMIT}"

aws s3 cp --acl=public-read --region ap-southeast-2 \
    "$(dirname $0)/bin/ec2mnt" \
    "s3://mapbox-ap-southeast-2/apps/ec2mnt/${TRAVIS_COMMIT}"

aws s3 cp --acl=public-read --region ap-south-1 \
    "$(dirname $0)/bin/ec2mnt" \
    "s3://mapbox-ap-south-1/apps/ec2mnt/${TRAVIS_COMMIT}"

aws s3 cp --acl=public-read --region sa-east-1 \
    "$(dirname $0)/bin/ec2mnt" \
    "s3://mapbox-sa-east-1/apps/ec2mnt/${TRAVIS_COMMIT}"

AWS_ACCESS_KEY_ID=${CN_ACCESS_KEY_ID} AWS_SECRET_ACCESS_KEY=${CN_SECRET_ACCESS_KEY} \
    aws s3 cp --acl=public-read --region cn-north-1 \
        "$(dirname $0)/bin/ec2mnt" \
        "s3://mapbox-cn-north-1/apps/ec2mnt/${TRAVIS_COMMIT}"

if git describe --tags --exact-match 2> /dev/null; then
    tag=$(git describe --tags --exact-match)
    aws s3 cp --acl public-read "$(dirname $0)/bin/ec2mnt" s3://mapbox/apps/ec2mnt/$tag

    aws s3 cp --acl=public-read --region us-east-1 \
        "$(dirname $0)/bin/ec2mnt" \
        "s3://mapbox-us-east-1/apps/ec2mnt/${tag}"

    aws s3 cp --acl=public-read --region us-west-1 \
        "$(dirname $0)/bin/ec2mnt" \
        "s3://mapbox-us-west-1/apps/ec2mnt/${tag}"

    aws s3 cp --acl=public-read --region us-west-2 \
        "$(dirname $0)/bin/ec2mnt" \
        "s3://mapbox-us-west-2/apps/ec2mnt/${tag}"

    aws s3 cp --acl=public-read --region eu-west-1 \
        "$(dirname $0)/bin/ec2mnt" \
        "s3://mapbox-eu-west-1/apps/ec2mnt/${tag}"

    aws s3 cp --acl=public-read --region eu-central-1 \
        "$(dirname $0)/bin/ec2mnt" \
        "s3://mapbox-eu-central-1/apps/ec2mnt/${tag}"

    aws s3 cp --acl=public-read --region ap-northeast-1 \
        "$(dirname $0)/bin/ec2mnt" \
        "s3://mapbox-ap-northeast-1/apps/ec2mnt/${tag}"

    aws s3 cp --acl=public-read --region ap-northeast-2 \
        "$(dirname $0)/bin/ec2mnt" \
        "s3://mapbox-ap-northeast-2/apps/ec2mnt/${tag}"

    aws s3 cp --acl=public-read --region ap-southeast-1 \
        "$(dirname $0)/bin/ec2mnt" \
        "s3://mapbox-ap-southeast-1/apps/ec2mnt/${tag}"

    aws s3 cp --acl=public-read --region ap-southeast-2 \
        "$(dirname $0)/bin/ec2mnt" \
        "s3://mapbox-ap-southeast-2/apps/ec2mnt/${tag}"

    aws s3 cp --acl=public-read --region ap-south-1 \
        "$(dirname $0)/bin/ec2mnt" \
        "s3://mapbox-ap-south-1/apps/ec2mnt/${tag}"

    aws s3 cp --acl=public-read --region sa-east-1 \
        "$(dirname $0)/bin/ec2mnt" \
        "s3://mapbox-sa-east-1/apps/ec2mnt/${tag}"

    AWS_ACCESS_KEY_ID=${CN_ACCESS_KEY_ID} AWS_SECRET_ACCESS_KEY=${CN_SECRET_ACCESS_KEY} \
        aws s3 cp --acl=public-read --region cn-north-1 \
            "$(dirname $0)/bin/ec2mnt" \
            "s3://mapbox-cn-north-1/apps/ec2mnt/${tag}"
fi
