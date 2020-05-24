#!/bin/bash


n=0
flag=0
until [ "$n" -ge 90 ]
do
    echo "[Status]: Checking the status of pods"
    pod_status=$(kubectl get pods -n ${APP_NS} -l ${APP_LABEL} -o custom-columns=:.status.phase --no-headers | uniq)
    [[ "${pod_status}" == "Running" ]] && break
    n=$((n+1))
    echo "pod is in ${pod_status} state please wait"
    sleep 2
    if [[ "$n" -eq 90 ]]; then
        flag=1; 
    fi
done
    if [[ "$flag" -eq 1 ]]; then 
         echo "Application pod fails to come in running state"
         exit 1;
    fi
echo "Application pod comes in Running state"
