Prerequisites:
- [von-network](https://github.com/bcgov/von-network)

Installation
```
git clone git@github.com:olichwiruk/aries.git
git submodule update --remote
```

Running up
1. Go to von-vetwork dir and run it with `./manage start`
1. In new terminal run `docker-compose up`. It serves:
    1. `toolbox.localhost`
    1. `fileserver.localhost`
    1. `agent1.localhost`
    1. `agent2.localhost`

Scenario
1. Copy agents invitation urls and connect them with toolbox
1. Connect agents together
    1. In Main agent: go to __Invitations__, create new invitation and copy URL
    1. In Client agent: go to __Connections__, paste invitiation url and add it (click Refresh button to see result)
1. Register Main agent did in ledger (http://0.0.0.0:9000) and activate it
1. Issue credential
    1. In Main agent: go to __Credential Issuance__
    1. Create Schema (version have to contain 1 or 2 dots => _1.0_ or _1.0.1_) with `hashlink` attribute
    1. Create Credential Definition (refresh after ~10 seconds to see result)
    1. Issue Credential for Client with hashlink `hl:zQmYn3m4mFgjrNjhQbvvxecQturvoUQ9GQzAkRqT8BJt7XD:zQ4e7YFPZ9iTWt8Cgn2VyTKkJE4T1AMQbcUJ1CG6F4WgxcDbtYMBCSWfhEp2Jai4VzxhRMKnoDYK7YxzwGVx4XYRhn59CmCFokmUe9FtKWouf`
1. Check credential in Client agent (refresh to get credentials)

In credential with hashlink attribute (`hl:<resource-hash>:<optional-metadata>`) attributes are combined with `<resource-hash>.json` from local file-server.
