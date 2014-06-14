# docker-registry-swift

Source for automated builds of a docker registry image.

The built image is available at https://registry.hub.docker.com/u/pallet/registry-swift/

The image is based on the official registry image, but with added
support for storing images on Swift.

Run a docker registry backed by a Swift datastore (e.g. on Rackspace):

```
/usr/bin/docker run --rm \
  -e SETTINGS_FLAVOR=swift \
  -e OS_CONTAINER=docker-registry \
  -e OS_USERNAME=your-username \
  -e OS_PASSWORD=your-password \
  -e OS_AUTH_URL=https://identity.api.rackspacecloud.com/v2.0/ \
  -e OS_REGION_NAME=DFW \
  -e OS_TENANT_NAME=MossoCloudFS_nnnnn \
  -p 5000:5000 \
  --name registry \
  pallet/registry-swift
```

## License

Copyright © 2014 Hugo Duncan

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
