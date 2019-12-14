export FILE_SERVER_PORT=8000
export FILE_SERVER=http://0.0.0.0:$FILE_SERVER_PORT

export VON_HOST=$(docker network inspect von_von | grep "Gateway" | cut -d':' -f 2 | cut -d'"' -f 2)

export AGENT1_NAME=Main
export AGENT1_PORT=3000
export AGENT1_ADMIN_PORT=$(($AGENT1_PORT + 1))

export AGENT2_NAME=Client
export AGENT2_PORT=3010
export AGENT2_ADMIN_PORT=$(($AGENT2_PORT + 1))
