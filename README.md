# cqlsh-k8s
This repo contains a Dockerfile and a Deployment for running cqlsh interactively in Kubernetes.

This can be useful if you are running a Cassandra image that does not include cqlsh.

This does not support executing statements with `cqlsh -e` or files with `cqlsh -f`.

Image tags are git commit hashes.