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

RUN apt-get -yqq update
RUN apt-get -yqq install git libffi-dev libssl-dev

RUN git clone https://github.com/dmp42/docker-registry-driver-glance.git /tmp/glance-driver \
    && pip install /tmp/glance-driver

# Add the openstack support
RUN ["pip", "install", "python-keystoneclient", "docker-registry-driver-swift"]

ADD config/config_sample.yml /docker-registry/config/config_sample.yml
