#!/bin/sh
export ALLOW_ROOT=1
export COIN=SperoCoin
export DAEMON_URL=http://user:teste@192.168.0.105:55681
export NET=mainnet

export MAX_SEND=10000000
export BANDWIDTH_UNIT_COST=50000
export CACHE_MB=2000

export DB_ENGINE=leveldb
export DB_DIRECTORY=/data
export SSL_CERTFILE=/data/ssl/server.crt
export SSL_KEYFILE=/data/ssl/server.key
export BANNER_FILE=/data/banner.txt
export DONATION_ADDRESS=SceX2CJjpoAGruFFykMA4c6eNjPAwrTd6K

export HOST=
export SSL_HOST=0.0.0.0
export SSL_PORT=50002

export TCP_HOST=0.0.0.0
export TCP_PORT=50001

export RPC_HOST=0.0.0.0
export RPC_PORT=8000

export REPORT_SERVICES=tcp://0.0.0.0:50001,ssl://0.0.0.0:50002,rpc://0.0.0.0:8000
export REPORT_HOST=electrumx.sperocoin.org

ulimit -n 10000

#python3 ./electrumx_server
python3 ./electrumx_server 2>> /data/electrum_log/electrumx.log >> /data/electrum_log/electrumx.log &