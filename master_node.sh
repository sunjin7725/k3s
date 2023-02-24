if [ $# -eq 1 ]; then
    # 특정 버젼으로 설치
    VERSION=$1
    curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION="${VERSION}" sh -s - server --cluster-init --disable traefik --docker
else
    # 기본 설치
    curl -sfL https://get.k3s.io | sh -s - server --cluster-init --disable traefik --docker
fi

export KUBECONFIG=/etc/rancher/k3s/k3s.yaml