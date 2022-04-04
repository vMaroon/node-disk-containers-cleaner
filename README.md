# Node Disk Containers Cleaner

This project deploys CronJobs to clean up unused container images from worker nodes' disks.

To deploy using your exported `KUBECONFIG`:
```
KUBECONFIG=$KUBECONFIG ./deploy.sh
```
or
```
curl "https://raw.githubusercontent.com/vMaroon/node-disk-containers-cleaner/main/deploy.sh" | KUBECONFIG=$HOH2 bash -s
```

To undeploy using your exported `KUBECONFIG`:
```
KUBECONFIG=... ./undeploy.sh
```
or
```
curl "https://raw.githubusercontent.com/vMaroon/node-disk-containers-cleaner/main/undeploy.sh" | KUBECONFIG=$HOH2 bash -s
```