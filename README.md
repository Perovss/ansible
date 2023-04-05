### Installation
Для удобства рекомендую использовать [ Pyenv ]( https://khashtamov.com/ru/pyenv-python/ ).

На данный момент используется версии:

- *Ansible 2.9.0*
- *python 3.9.2*

``` bash
pip3 install ansible==2.9.0
```

## Using
Запуск плейбука, с указанием vault-password-file (без него не будет работать)
``` bash
ansible-playbook playbooks/playbook_name.yml --vault-password-file ~/.vault_pass.txt
```
