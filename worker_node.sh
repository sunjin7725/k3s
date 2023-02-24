if [ $# -eq 1]; then
    K3S_URL=$1
    echo "[OK] K3S master IP setted up!!!"
else
    echo "
        [Error] K3S master IP must be setted up!!!
            e.q) https://xxx.xxx.xxx:6443
         "
    exit 1

if [ $# -eq 2]; then
    K3S_TOKEN=$2
    echo "[OK] Token set-up complete!!!"
else
    echo "[Error] K3S master node's token must be setted up!!!"
    exit 1
fi

if [ $# -eq 3 ]; then
    VERSION=$3
    echo "Worker node install k3s version==${VERSION}"
    curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION="${VERSION}" \
    K3S_URL=${K3S_URL} \
    K3S_TOKEN="${K3S_TOKEN}" \
    sh -s - --docker    
else
    echo "Worker node install k3s version==latest"
    curl -sfL https://get.k3s.io | \
    K3S_URL=${K3S_URL} \
    K3S_TOKEN="${K3S_TOKEN}" \
    sh -s - --docker
fi