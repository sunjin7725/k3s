if [ $# -eq 1 ]; then
    # if you want to install specific version of k3s
    VERSION=$1
    curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION="${VERSION}" sh -s - server --cluster-init --disable traefik --docker
else
    # if you want to install latest version of k3s
    curl -sfL https://get.k3s.io | sh -s - server --cluster-init --disable traefik --docker
fi

export KUBECONFIG=/etc/rancher/k3s/k3s.yaml