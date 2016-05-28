export COUCHBASE_CLI=/Users/arungupta/tools/Couchbase-Server-4.0.app/Contents/Resources/couchbase-core/bin/couchbase-cli
for node in 01 02
do
    $COUCHBASE_CLI \
        server-add \
        --cluster=$(docker-machine ip swarm-master-$1):8091 \
        --user Administrator \
        --password password \
        --server-add=$(docker-machine ip swarm-node-$1-$node) \
        --server-add-username=Administrator \
        --server-add-password=password
done

$COUCHBASE_CLI \
	setting-cluster \
	--cluster=$(docker-machine ip swarm-master-$1):8091 \
	--user Administrator \
	--password password \
	--cluster-name=cluster$1

