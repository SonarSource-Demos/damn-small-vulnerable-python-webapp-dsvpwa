#!/bin/bash

docker run --rm -v $(pwd)/.owasp-zap/reports:/zap/wrk/:rw \
    owasp/zap2docker-stable zap-baseline.py \
    -t http://host.docker.internal:65413 \
    -r testreport.html \
    -x testreport.xml
