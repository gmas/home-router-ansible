# home-router-ansible
Ansible scripts for setting up a Linux router

```shell
ansible-playbook localhost.yml -K
```

```shell
# run with inventory file
ansible-playbook -i router router.yml -D -C -vvv
```
## Kubernetes
### Metrics with heapster/influxdb
Need to set `KUBELET_EXTRA_ARGS=--read-only-port=10255` in  `/etc/default/kubelet` in order for 
heapster to scrape metrics
