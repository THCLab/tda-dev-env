#### Install [von-network](https://github.com/bcgov/von-network)
1. Clone repository
1. Build docker images with `./manage build`
* start network with `./manage start`
* run `./manage logs` if you want to see logs
* network webserver is hosted on `localhost:9000`
* run `./manage stop` to stop network
* `./manage down` will drop all ledger transactions

#### Install [aries](https://github.com/THCLab/aries) ecosystem
1. Clone repository
1. Checkout to `work` branch
1. Run `docker-compose up`, it will serve:
    * [toolbox.localhost](https://github.com/THCLab/aries-toolbox)
    * [repository.localhost](https://github.com/THCLab/odca-search-engine)
    * [data-vault.localhost](https://github.com/THCLab/oca-data-vault)
    * [agent1.localhost](https://github.com/THCLab/aries-cloudagent-python)
    * [agent2.localhost](https://github.com/THCLab/aries-cloudagent-python)
1. Follow [basic scenario](https://github.com/THCLab/aries#scenario) in order to get familiar with aries

* In order to run toolbox in development view in `.env.development` file set `VUE_APP_UI` to `dev`
* In order to run services with local source code in `docker-compose.yml`:
    * aries-cloudagent
    ```
      agent1.localhost:
        volumes:
          - /path/to/aries-cloudagent-python/aries_cloudagent:/home/indy/aries_cloudagent
          - /path/to/aries-acapy-plugin-toolbox:/home/indy/aries-acapy-plugin-toolbox
        [...]

      agent2.localhost:
        volumes:
          - /path/to/aries-cloudagent-python/aries_cloudagent:/home/indy/aries_cloudagent
          - /path/to/aries-acapy-plugin-toolbox:/home/indy/aries-acapy-plugin-toolbox
        [...]
    ```
    * aries-toolbox
    ```
      toolbox:
        volumes:
          - /path/to/aries-toolbox:/usr/src/app
        [...]
    ```
