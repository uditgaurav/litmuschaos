#!/bin/bash


echo "embeding generic experiments"

embedmd -w pod-delete.md

embedmd -w container-kill.md

embedmd -w pod-network-loss.md

embedmd -w pod-network-latency.md

embedmd -w pod-cpu-hog.md

embedmd -w node-cpu-hog.md

embedmd -w disk-fill.md

embedmd -w node-drain.md

embedmd -w pod-network-corruption.md

echo "embding openebs experiments"

embedmd -w openebs-pool-pod-failure.md

embedmd -w openebs-pool-container-failure.md

embedmd -w openebs-target-pod-failure.md

embedmd -w openebs-target-container-failure.md

embedmd -w openebs-target-network-delay.md

embedmd -w openebs-target-network-loss.md

echo "embding kafka experiments"

embedmd -w kafka-broker-pod-failure.md

embedmd -w kafka-broker-disk-failure.md

echo "embding coredns experiments"

embedmd -w coredns-pod-delete.md

echo "other files-getstarted"

embedmd -w getstarted.md

