![](https://img.shields.io/docker/pulls/veovis/opendkim.svg) ![](https://img.shields.io/microbadger/image-size/veovis%2Fopendkim.svg) ![](https://img.shields.io/github/tag/LordVeovis/docker-opendkim.svg) ![](https://img.shields.io/github/license/LordVeovis/docker-opendkim.svg)

# OpenDKIM

An alpine-based docker container providing opendkim.

## Details

This container provides opendkim linked with opendbx. This will allow using opendkim with private DKIM keys stored in a database.

* OpenDKIM 2.10.3
* Alpine 3.8.2
* LibreSSL 2.7.4
* libmilter 1.0.1

### Installing

See [docker-compose.yml](docker-compose.yml) for an example of how to configure the container.
OpenDKIM require a configuration file that MUST be mapped to /etc/opendkim/opendkim.conf, as indicated on the [docker-compose.yml](docker-compose.yml).
Please look at the official [OpenDKIM documentation](http://opendkim.org/docs.html) for help on the configuration file.

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

As a packager, we use the same versioning system than the upstream.

## Authors

* **Veovis** - *Initial work* - [LordVeovis](https://github.com/LordVeovis)

## License

This project is licensed under the MPL-2.0 License - see the [LICENSE](LICENSE) file for details
