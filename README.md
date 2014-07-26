# My common role


* install python modules apt etc on server
* Fail2Ban
* disable password auth
* set locale
* ntp
* unattended security updates
* some administration/monitoring tools like dnsutils, smartmon, etc.


## Prereqs:

```
sudo ansible-galaxy install mivok0.users Ansibles.fail2ban
```

## Usage


```yaml
---
- name: apply common configuration to all nodes
  hosts: all
  vars_files:
    - group_vars/pubkeys.yml
  vars:
    users:
      - username: root
        name: Root Account
        groups: ['sudo']
        uid: 0
        ssh_key:
        - '{{pubkeys.stefan}}'
        - '{{pubkeys.john}}'
  sudo: True
  roles:
    - role: common
```
