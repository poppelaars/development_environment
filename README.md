# Development environment

This is my development environment. It can be installed on Debian- and Redhat-
based distributions.

## Quickstart

```bash
./bootstrap.sh
ansible-playbook development_environment.yml --ask-become-pass --extra-vars "git_user_name=<username> git_user_email=<email>"
```

## Development

```bash
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Microk8s

```bash
sudo microk8s status --wait-ready
sudo microk8s enable dashboard
sudo microk8s enable dns
sudo microk8s enable registry
sudo microk8s enable istio
sudo microk8s reset --destroy-storage
```

Create kubectl config:

```bash
cd $HOME
mkdir .kube
cd .kube
microk8s config > config
```
