# Building go binaries for pod_delete experiment
go build -o build/_output/${GOARCH}/pod-delete ./experiments/generic/pod-delete
# Building go binaries for pod_cpu_hog experiment
go build -o build/_output/${GOARCH}/pod-cpu-hog ./experiments/generic/pod-cpu-hog
# Building go binaries for pod_memory_hog experiment
go build -o build/_output/${GOARCH}/pod-memory-hog ./experiments/generic/pod-memory-hog
# Buiding go binaries for pod_network_duplication experiment
go build -o build/_output/${GOARCH}/pod-network-duplication ./experiments/generic/pod-network-duplication
# Buiding go binaries for pod_network_latency experiment
go build -o build/_output/${GOARCH}/pod-network-latency ./experiments/generic/pod-network-latency
# Buiding go binaries for pod_network_loss experiment
go build -o build/_output/${GOARCH}/pod-network-loss ./experiments/generic/pod-network-loss
# Buiding go binaries for pod_network_corruption experiment
go build -o build/_output/${GOARCH}/pod-network-corruption ./experiments/generic/pod-network-corruption
# Buiding go binaries for node_taint experiment
go build -o build/_output/${GOARCH}/node-taint ./experiments/generic/node-taint
# Buiding go binaries for node_drain experiment
go build -o build/_output/${GOARCH}/node-drain ./experiments/generic/node-drain
# Buiding go binaries for kubelet_service_kill experiment
go build -o build/_output/${GOARCH}/kubelet-service-kill ./experiments/generic/kubelet-service-kill
# Buiding go binaries for node_memory_hog experiment
go build -o build/_output/${GOARCH}/node-memory-hog ./experiments/generic/node-memory-hog
# Buiding go binaries for node_cpu_hog experiment
go build -o build/_output/${GOARCH}/node-cpu-hog ./experiments/generic/node-cpu-hog
# Buiding go binaries for container_kill experiment
go build -o build/_output/${GOARCH}/container-kill ./experiments/generic/container-kill
# Buiding go binaries for disk_fill experiment
go build -o build/_output/${GOARCH}/disk-fill ./experiments/generic/disk-fill
# Buiding go binaries for pod-autoscaler experiment
go build -o build/_output/${GOARCH}/pod-autoscaler ./experiments/generic/pod-autoscaler
# Buiding go binaries for container_kill helper
go build -o build/_output/${GOARCH}/container-killer ./chaoslib/litmus/container-kill/helper
# Buiding go binaries for cassandra-pod-delete
go build -o build/_output/${GOARCH}/cassandra-pod-delete ./experiments/cassandra/pod-delete
