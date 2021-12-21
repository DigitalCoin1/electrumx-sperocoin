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

export SERVICES=tcp://0.0.0.0:50001,ssl://0.0.0.0:50002,rpc://127.0.0.1:8000
export REPORT_SERVICES=tcp://electrumx.sperocoin.org:50001,ssl://electrumx.sperocoin.org:50002

ulimit -n 10000

#python3 ./electrumx_server
python3 ./electrumx_server 2>> /data/electrum_log/electrumx.log >> /data/electrum_log/electrumx.log &