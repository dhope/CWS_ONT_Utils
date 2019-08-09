# Template Dockerfile for Batch Jobs
#
# help: https://github.com/INWTlab/r-docker
#
# Author: Sebastian Warnholz
FROM inwt/r-batch:3.6.0

RUN apt-get get update && \
  apt-get install -y libjpeg-dev

ADD . .

RUN installPackage