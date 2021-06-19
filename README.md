minecraft
=========

Install a vanilla minecraft server if none is present.
Set up backup jobs.
if server is present, create a backup and update the server.

Requirements
------------

Java
Ansible 2.9 or later
Linux Distribution
Root-access

Role Variables
--------------

```yaml
# defaults file for minecraft
minecraft_user: minecraft
minecraft_group: minecraft
server_install_path: /home/minecraft/vanilla
minecraft_home_path: /home/minecraft
server_backup_path: /home/minecraft/backup
minecraft_max_memory: 4096M
minecraft_initial_memory: 1024M

# server properties
minecraft_server_motd: vanilla
server_difficulty: easy
max_players: 8
game_mode: survival
pvp: "true"
server_whitelist: "true"
```


Example Playbook
----------------

```yaml
---
- name: Server set up
  hosts: localhost
  roles:
    - name: minecraft
      role: minecraft
      vars:
        minecraft_server_motd: my_minecraft_server
```


License
-------

MIT

Author Information
------------------

ra-rau
