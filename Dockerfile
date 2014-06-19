# Add swift support to the official Registry image

# Run a docker registry backed by a Swift datastore.
#
# /usr/bin/docker run --rm \
#   -e SETTINGS_FLAVOR=glance \
#   -e OS_CONTAINER=docker-registry \
#   -e OS_USERNAME=your-username \
#   -e OS_PASSWORD=your-password \
#   -e OS_AUTH_URL=???? \
#   -p 5000:5000 \
#   --name registry \
#   registry-glance

FROM registry
MAINTAINER Paul Czarkowski <username.taken@gmail.com>

# Add the glance support
RUN ["pip", "install", "docker-registry-driver-glance", "python-keystoneclient"]
