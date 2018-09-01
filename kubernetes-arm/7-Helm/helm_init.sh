kubectl create -f rbac-config.yaml
# generate yaml
./bin/linux-arm64/helm init --debug --dry-run --service-account tiller --tiller-image gmas/tiller-arch64:2.10.0 > helm.yaml
