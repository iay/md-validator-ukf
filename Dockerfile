#
# Dockerfile for md-validator-ukf.
#
# This layers configuration on top of the md-validator image.
#

#
# Acquire the base image from Docker Hub.
#
FROM ianayoung/md-validator

LABEL maintainer="Ian Young <ian@iay.org.uk>"

WORKDIR /application

#
# Customise by modifying /application/BOOT-INF/...
#
ADD overlay/ BOOT-INF/
