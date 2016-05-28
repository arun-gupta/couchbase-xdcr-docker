# Docker Machine for Consul
docker-machine \
   create \
   -d virtualbox \
   consul-machine

# Start Consul
docker $(docker-machine config consul-machine) run -d --restart=always \
         -p "8500:8500" \
         -h "consul" \
         progrium/consul -server -bootstrap

