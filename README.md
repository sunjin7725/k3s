# k3s installation bash
- I'm setted up `--disable traefik` option.
- So, if you want to enable this option, you have to modify master_node.sh & worker_node.sh in this repository.
- And, if you want to disable option others case, you also have to modify shell script in this repository.
- [Available option is here!](https://docs.k3s.io/installation)

## master_node.sh
### if you want to install specific version of k3s
```bash
./master_node.sh "${k3s version}"
```
**Note**
Please check k3s release available version 
[k3s release](https://github.com/k3s-io/k3s/releases)

### if you want to install latest version of k3s THEN JUST RUN
```bash
./master_node.sh
```

## worker_node.sh
**Warning**
k3s master's url(like, https://xxx.xxx.xxx:6443) & k3s master's token are required 

### if you want to install specific version of k3s
```bash
./worker_node.sh "${k3s url}" "${k3s token}" "${k3s version}"
```

### if you want to install latest version of k3s
```bash
./worker_node.sh "${k3s url}" "${k3s token}"
```
**Note**
Please check k3s release available version 
[k3s release](https://github.com/k3s-io/k3s/releases)
