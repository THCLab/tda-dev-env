# Prerequisites:
- [von-network](https://github.com/bcgov/von-network)

# Installation
```
git clone git@github.com:olichwiruk/aries.git
cd aries
git submodule init
git submodule update
```

# Running up
1. Go to von-vetwork dir and run it with `./manage start`
1. In new terminal run `docker-compose up`. It serves:
    1. `toolbox.localhost`
    1. `fileserver.localhost`
    1. `agent1.localhost`
    1. `agent2.localhost`

# Scenario
1. Open toolbox.localhost in two windows
1. Copy agents invitation urls and connect them with toolboxes  
(`docker logs aries_agent1.localhost_1` and `docker logs aries_agent2.localhost_1` will be useful)
1. Connect agents together
    1. In Main agent: go to __Invitations__, create new invitation and copy URL
    1. In Client agent: go to __Connections__, paste invitiation url and add it (click Refresh button to see result)
1. Register Main agent did in ledger (http://0.0.0.0:9000) and activate it
1. Issue credential
    1. In Main agent: go to __Credential Issuance__
    1. Create Schema (version have to contain 1 or 2 dots => _1.0_ or _1.0.1_) with `hashlink` attribute
    1. Create Credential Definition (refresh after ~10 seconds to see result)
    1. Issue Credential for Client with hashlink
       * json data
         `hl:zQmYn3m4mFgjrNjhQbvvxecQturvoUQ9GQzAkRqT8BJt7XD:zsh42oDLk2g53GV6PW7Zdz8C4e4wyfF9UDNkacCioxjjpYAqyUCPXPUEJozjtxSSysJgTepNGvTJsiYAYaTj6wNKa4Fy69ZnGV3Qx8ZR9epm2ivE78hx1`
1. Check credential in Client agent

### In order to Issue Credential with filled OCA form:
1. Run [OCA Repository](https://github.com/olichwiruk/odca-search-engine) with `docker-compose up`
1. Upload schema to OCA Repository
   ```
   for f in oca-schema/**/*.json
   do
       curl -X POST localhost:9292/schemas -d "@$f"
       echo \\n $f
   done
   ```
1. Issue Credential with hashlink
   `hl:zQmWpxwGkBpYyEXyQJyqAQqMoT7Mmf3pA1X9kax2SdoLuRL:zAWN2irea3UKQaE17Z7ECA4zmX4zyrRsVJJAsMmj1GSZ7S9caWtuxShtxADgx8zyspwhcgySaNFwtKozSnoaN1UbtQAR73WWnpeRANXVwtegsKwMNjYKZRt5x5yMdDdgcuEqu1og1JPQM1wfDf2YNDQYmDJ7ReKQcmjV6L7i6N1vA3245ZnVaYrCJVzJpr1LMqDvvszNwMAXUuuzLqFAycTYoSwDDvi8gBzdwhFvazYphAwiYkCDHJwyUo9FzR469wbJaFQrmRpZn9eAv2eV3R9r1U4nSrX4y5Ms1a4GHNG1ezeeMKJ9E85HKxHjpGfErTdr4FnSWbbWz6LrjyHem9dEfYagSoR3bidTuivZ2B4p12SUXbP2N2Gc8gowEAgpeEEE8E9WUyXKbEB6Bqg7e8AGqP5e6FtuMZomSdd4VaZLgHU2KAve4koUiNn3GE93JsuP`  
with metadata encoded
   ```
   Metadata:
       url: http://fileserver.localhost/zQmWpxwGkBpYyEXyQJyqAQqMoT7Mmf3pA1X9kax2SdoLuRL.json
       experimantal: {
           "host": "http://localhost:9292/schemas/",
           "schema-base": "ceuMXADq8KYCjGwmU2rjgraH6wsFEmaEUjgLUT5scy5g",
           "overlays": [
               "hL86wfH7YW4bZ99FYvhUGst4vQKhxawcneUkLYty1VwT",
               "fH2vPmcJa8AvR5o6z5BzfUBLBLRP8EQXXrQF1hwqRnbr",
               "cqeFnwv1pFbBKyVaTBaqjSdUo2AygPHeSvdsgMbX4d4u"
           ]
       }
   ```
