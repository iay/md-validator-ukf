#
# Dockerfile for md-validator-ukf.
#
# This layers configuration on top of the iay/md-validator image.
#

FROM iay/md-validator
MAINTAINER Ian Young <ian@iay.org.uk>

WORKDIR /application

#
# Customise by modifying /application/BOOT-INF/...
#
ADD overlay/ BOOT-INF/
