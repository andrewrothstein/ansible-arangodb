andrewrothstein.arangodb
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-arangodb.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-arangodb)

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
