#!/bin/bash

echo "using kubeconfig $KUBECONFIG"

# apply service account
kubectl apply -f serviceaccount.yaml
# give SA privileged permission (for storage root access)
oc adm policy add-scc-to-user privileged -z disk-containers-janitor -n default
# apply cronjob on every node
for NODE_HOSTNAME in $(kubectl get nodes -l node-role.kubernetes.io/worker='' -o jsonpath='{range .items[*]}{.metadata.labels.kubernetes\.io\/hostname}{"\n"}{end}')
	do
		cat cronjob.yaml | sed 's/${NODE_HOSTNAME}/'${NODE_HOSTNAME}'/g' - | kubectl apply -f -
	done

