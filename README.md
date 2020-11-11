# live-build-interface
A build system interface for Debian Live Build.

## default system
Debian Buster (amd64)

## configuring live builds
Changes made to the configurtion files within *Resources/Config-Templates/includes.chroot/* will become the corresponding `/opt`, `/etc`, and `/home` folders for newly created builds.

## dependencies

`live-build` # live-build-interface is an interface for this package

`terminator` # allows other terminals to be launched

`espeak` # used for announcing a completed build

## references

`https://www.debian.org/devel/debian-live/`

`https://manpages.debian.org/testing/live-build/live-build.7.en.html`

`https://live-team.pages.debian.net/live-manual/html/live-manual/index.en.html`
