# Template Dockerfile for Batch Jobs
#
# help: https://github.com/INWTlab/r-docker
#
# Author: Sebastian Warnholz
FROM inwt/r-batch:3.6.0

ADD . .

RUN installPackage