# Ghost Blog install shell script for 500MB Vultr instance on ubuntu 16.04

### Installation

This script will install [Node.js](https://nodejs.org/) v8 via nodesource PPA, nginx, mysql.

It's designed for a fresh install of ubuntu 16.04 on a [vultr 500Mb instance](https://www.vultr.com/?ref=7413531).

#### Step 1.
Create a sudo user to install with. 'ghost' is not allowed as ghost will create this user.
```sh
$ useradd bloguser
$ usermod -a -G sudo bloguser
$ su bloguser # or login as blog user.
```


#### Step 2.
Download and execute the `ghost-install.sh` shell script, as the user mentioned above e.g. `bloguser`
```sh
$ sudo curl -s https://raw.githubusercontent.com/rickyodin/vultr-ghost/master/ghost-install.sh | bash
```
