Prerequisites:
- [von-network](https://github.com/bcgov/von-network)

Installation
```
git clone git@github.com:olichwiruk/aries.git
cd aries
git submodule init
git submodule update
```

Running up
1. Go to von-vetwork dir and run it with `./manage start`
1. In new terminal run `docker-compose up`. It serves:
    1. `toolbox.localhost`
    1. `fileserver.localhost`
    1. `agent1.localhost`
    1. `agent2.localhost`

Scenario
1. Open toolbox.localhost in two windows
1. Copy agents invitation urls and connect them with toolboxes
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
       * AuditOverview form (odca zip file)
         `hl:zQmZvbUABwtjeHirdExxWKwSVfd5KJhscVZDovMo9HH4tsV:zCV78Cq6etWpiUycjQY27a85jA8PjKBf9TtVCw9dWsBMg1YdTMi1ZS52wwdJ6Z1rTzcAePjYQK4yk6pPQb3ecMWvGyB4V5H8fRZX7KFqANp84fiE9Yns`
1. Check credential in Client agent (refresh to get credentials)
