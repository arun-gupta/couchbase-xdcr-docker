export COUCHBASE_CLI=/Users/arungupta/tools/Couchbase-Server-4.0.app/Contents/Resources/couchbase-core/bin/couchbase-cli
$COUCHBASE_CLI \
rebalance \
--cluster=$(docker-machine ip swarm-master-$1):8091 \
--user Administrator \
--password password \
--server-add-username=Administrator \
--server-add-password=password
