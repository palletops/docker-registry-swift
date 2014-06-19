# docker-registry-glance

Source for automated builds of a docker registry image.

The built image is available at https://registry.hub.docker.com/u/paulczar/registry-glance

The image is based on the official registry image, but with added
support for storing images on Glance.

Run a docker registry backed by a Glance datastore 

```
/usr/bin/docker run --rm \
  -e SETTINGS_FLAVOR=glance \
  -e OS_CONTAINER=docker-registry \
  -e OS_USERNAME=your-username \
  -e OS_PASSWORD=your-password \
  -p 5000:5000 \
  --name registry \
  pallet/registry-glance
```

## License

Copyright © 2014 Hugo Duncan
Copyright © 2014 Paul Czarkowski, Rackspace Inc

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
