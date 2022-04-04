# Node Disk Containers Cleaner

This project deploys CronJobs to clean up unused container images from worker nodes' disks.

To deploy using your exported `CONFIG`:
```
KUBECONFIG=$CONFIG ./deploy.sh
```
or
```
curl "https://raw.githubusercontent.com/vMaroon/node-disk-containers-cleaner/main/deploy.sh" | KUBECONFIG=$CONFIG bash -s
```

To undeploy using your exported `CONFIG`:
```
KUBECONFIG=$CONFIG ./undeploy.sh
```
or
```
curl "https://raw.githubusercontent.com/vMaroon/node-disk-containers-cleaner/main/undeploy.sh" | KUBECONFIG=$CONFIG bash -s
```