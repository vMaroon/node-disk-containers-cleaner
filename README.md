# Node Disk Containers Cleaner

This project deploys CronJobs to clean up unused container images from worker nodes' disks.

To deploy, run:
```
./deploy.sh
```
or
```
curl "https://raw.githubusercontent.com/vMaroon/node-disk-containers-cleaner/main/deploy.sh" | bash -s
```

To undeploy, run:
```
./undeploy.sh
```
or
```
curl "https://raw.githubusercontent.com/vMaroon/node-disk-containers-cleaner/main/undeploy.sh" | bash -s
```