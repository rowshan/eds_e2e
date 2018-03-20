#!/bin/bash
#build the docker image
docker build -t rowshan/eds_e2e .
#Run the test_app image container
docker run -p 5000:5000 rowshan/eds_e2e