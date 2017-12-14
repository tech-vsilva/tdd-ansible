# TDD Ansible


## Requirements

You have to install [Vagrant](https://www.vagrantup.com/downloads.html).

Then, inside of the project folder, run `vagrant up`.

After the `provision` process is finished you can `ssh` the machine via `vagrant ssh` command.

Load your `virtual environment` with `source venv/bin/activate` command.

Access the synced directory at `cd /synced/` and start your development! :)

In summary:
```
vagrant up
vagrant ssh
activate
cd /synced/
```

So from now, everything you do will be synced with your host machine.


## Knowledge

How to start a new role with `molecule`:

```
molecule init role --role-name foo --driver-name docker
```
