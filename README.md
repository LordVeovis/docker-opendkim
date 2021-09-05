[![](https://img.shields.io/docker/cloud/build/veovis/opendkim.svg)](https://hub.docker.com/r/veovis/opendkim/builds) [![](https://img.shields.io/docker/pulls/veovis/opendkim.svg)](https://hub.docker.com/r/veovis/opendkim) ![](https://img.shields.io/microbadger/image-size/veovis%2Fopendkim.svg) [![](https://img.shields.io/github/tag/LordVeovis/docker-opendkim.svg)](https://github.com/LordVeovis/docker-opendkim/tags) [![](https://img.shields.io/github/license/LordVeovis/docker-opendkim.svg)](https://github.com/LordVeovis/docker-opendkim/blob/master/LICENSE)

# OpenDKIM

An alpine-based docker container providing opendkim.

## Details

This container provides opendkim linked with opendbx. This will allow using opendkim with private DKIM keys stored in a database.

* OpenDKIM 2.11
* Alpine 3.14
* OpenDBX 1.4.6
* OpenSSL 1.1.1l
* libmilter 1.0.2

## Installing

See [docker-compose.yml](https://github.com/LordVeovis/docker-opendkim/blob/master/docker-compose.yml) for an example of how to configure the container.
OpenDKIM require a configuration file that MUST be mapped to /etc/opendkim/opendkim.conf, as indicated on the [docker-compose.yml](https://github.com/LordVeovis/docker-opendkim/blob/master/docker-compose.yml).
Please look at the official [OpenDKIM documentation](http://opendkim.org/docs.html) for help on the configuration file.

## Contributing

Please read [CONTRIBUTING](https://github.com/LordVeovis/docker-opendkim/blob/master/CONTRIBUTING) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

As a packager, we use the same versioning system than the upstream and suffixed by a revision number, like the Gentoo versioning.

* the branch master is the latest version and will be tagged latest
* a git branch represent a specific version from the upstream, like 2.10.3
* a git tag is made from a branched commit and represent a released-tag version frozen in time, like 2.10.3-r2

Usually only the lastest version from the upstream is supported.

## Authors

* **Veovis** - *Initial work* - [LordVeovis](https://github.com/LordVeovis)

## License

This project is licensed under the MPL-2.0 License - see the [LICENSE](https://github.com/LordVeovis/docker-opendkim/blob/master/LICENSE) file for details
