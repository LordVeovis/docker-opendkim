# Project Title

An alpine-based docker container providing opendkim.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

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
