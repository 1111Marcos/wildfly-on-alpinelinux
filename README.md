# Wildfly on Alpine Linux


## Build environment for Alpine Linux
To create `apk` packages for alpine, you need a build environment.
* setup your system and account for building Alpine packages (take a look on web) and/or [Alpine wiki](https://wiki.alpinelinux.org/wiki/Include:Setup_your_system_and_account_for_building_packages)

## Getting started

Checking `abuild`
```ash
abuild -A
x86_64      # You\'ll see this or your processor architecture
```
Checkout this repo
```ash
git clone https://github.com/1111Marcos/wildfly-on-alpinelinux.git
```
Making package
```ash
cd wildfly-on-alpinelinux
abuild -rv
```

## QA - Quality Assurance
A little remember to test and check:
* Check if modifications was applied on this files with helper happens;
* Check if `abuild -r` command create a new apk package;

- [x] `apk add`  command
- [x] `apk delete`  command
- [x] openrc startup script
- [x] openrc stop script
- [x] openrc status command
- [x] version upgrade/downgrade action (with `./setversion.sh` helper)

## License
This software is Open Source one released under the Apache 2.0 license.

