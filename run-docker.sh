#!/bin/bash

export CYPRESS_VIDEO=false
. ./env.sh

docker run -it --rm -v $PWD:/e2e -w /e2e \
    --name Cypress-CK \
    -e CYPRESS_VIDEO -e CYPRESS_RECORD_KEY \
    cypress/included:3.2.0 \
    --record
