#!/bin/bash
#build the docker image
docker build -t rowshan/eds_e2e rowshan/eds_e2e
#Run the test_app image container
docker run -d -p 5000:5000 rowshan/eds_e2e