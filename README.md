### Prepare Ansible shell

```
docker build -t local-ansible .
docker run -it --rm -v $PWD:/home/ansible/repo -v $HOME/.ssh:/home/ansible/.ssh local-ansible bash
```

### Run Ansible

Install galaxy collection. Required for docker_compose_v2 module.
```
ansible-galaxy collection install -r galaxy-requirements.yaml --force
```
Run playbooks against envA:
```
ansible-playbook -i inventory/envA/hosts playbooks/docker.yaml
ansible-playbook -i inventory/envA/hosts playbooks/swarm.yaml
ansible-playbook -i inventory/envA/hosts playbooks/run_compose.yaml
```
