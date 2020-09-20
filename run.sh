#!/bin/bash

set -e 

echo "Going to deploy me some stuff"

docker run -it -v /var/run/docker.sock:/var/run/docker.sock \
	  -e TargetAccountId="${TARGET_ACCOUNT_ID}" \
	  -e EnvironmentNameUpper="PIPELINE" \
	  -e ServiceName="alpha-jenkins-svc" \
	  -e BUILD_ID="${BUILD_ID}" \
	  alpha-jenkins-svc:b${BUILD_ID} /dist/deploy.sh
