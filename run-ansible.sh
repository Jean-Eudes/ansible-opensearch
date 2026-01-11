#!/bin/bash
podman run --entrypoint ansible-playbook \
  -v $(pwd):/root/platform \
  -v $SSH_AUTH_SOCK:/run/ssh-agent \
  -e SSH_AUTH_SOCK=/run/ssh-agent \
  sgconnect/ansible "$@"
