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
