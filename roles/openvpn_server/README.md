# Использование роли
* Необходимо указать в inventory группу *routers* и добавить туда инстансы.

``` yaml
all:
  hosts:
  children:
    test_stand:
      children:
        routers:
          hosts:
            router1.soft-machine.tech:
              ansible_python_interpreter: /usr/bin/python3
            router2.soft-machine.tech:
              ansible_python_interpreter: /usr/bin/python3
            router3.soft-machine.tech:
              ansible_python_interpreter: /usr/bin/python3
            router4.soft-machine.tech:
              ansible_python_interpreter: /usr/bin/python3
```

Пример плейбука для запуска роли:
``` yaml
--- 
- hosts: routers
  roles:
    - openvpn_server
...
```

## Выпуск \ Отзыв сертификатов.
* Достаточно передать --extra-vars *clients_names* или *revoke_clients* со списком пользователей, для увеличения скорости работы лучше использовать tags.
* В качестве имени пользователя используется корпоративный почтовый адрес, именно туда будет отправлен сертификат.

``` bash
-e '{"clients_names": [user1,user2,user3]}' -t client
```

``` bash
-e '{"revoke_clients": [user1,user2,user3]}' -t client
```
