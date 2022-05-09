andrewrothstein.arangodb
=========
![Build Status](https://github.com/andrewrothstein/ansible-arangodb/actions/workflows/build.yml/badge.svg)

Installs [ArangoDB](https://www.arangodb.com)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: clients
  vars:
    arangodb_role: client
  roles:
    - andrewrothsstein.arangodb
- hosts: servers
  roles:
    - andrewrothstein.arangodb
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
