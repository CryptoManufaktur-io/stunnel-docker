# stunnel-docker

## Quick setup

Run `cp default.env .env`, then `vi .env`, and update values like LOCAL_PORT, CONNECT_ADDR, and PSK.

- `./stunneld install` brings in docker-ce, if you don't have Docker installed already.
- `./stunneld up`

To update the software, run `./stunneld update` and then `./stunneld up`

## Version

stunnel Docker uses a semver scheme.

This is stunnel-docker v1.0.0
