## Counter-Strike: Global Offensive + Docker
[![License](http://img.shields.io/:license-mit-blue.svg)](https://github.com/Gonzih/docker-csgo-server/blob/master/LICENSE.md)

### About
Run Counter-Strike: Global Offensive server with Docker.

By default 128 tick and autoupdate features are enabled (take a look at `csgo.sh` file).
You can create new `Dockerfile` based on this image and customize it with plugins, configs, `CMD` and `ENTRYPOINT` instructions.

### Usage
##### Build Image

    docker build -t csgo github.com/ernnst/docker-csgo-server

##### Run Image
Default

    docker run -d -p 27015:27015 -p 27015:27015/udp csgo

Classic Casual

    docker run -d -p 27015:27015 -p 27015:27015/udp csgo -console -usercon +game_type 0 +game_mode 0 +mapgroup mg_active +map de_cache

Classic Competitive

    docker run -d -p 27015:27015 -p 27015:27015/udp csgo -console -usercon +game_type 0 +game_mode 1 +mapgroup mg_active +map de_cache

Arms Race

    docker run -d -p 27015:27015 -p 27015:27015/udp csgo -console -usercon +game_type 1 +game_mode 0 +mapgroup mg_armsrace +map ar_shoots

Demolition

    docker run -d -p 27015:27015 -p 27015:27015/udp csgo -console -usercon +game_type 1 +game_mode 1 +mapgroup mg_demolition +map de_lake

Deathmatch

    docker run -d -p 27015:27015 -p 27015:27015/udp csgo -console -usercon +game_type 1 +game_mode 2 +mapgroup mg_allclassic +map de_dust

### Local Server
Add `+sv_lan 1` to `docker run` command.

### Public Server
Visit [this](https://steamcommunity.com/dev/managegameservers) page to generate a game server login token (GSLT).

Use 730 as the App ID and add any Memo to identify the server:
![Steam](https://raw.githubusercontent.com/ernnst/ansible-csgo/master/files/1.png)
Copy `Login Token`
![Steam](https://raw.githubusercontent.com/ernnst/ansible-csgo/master/files/2.png)
Add `-net_port_try 1 +sv_setsteamaccount LOGIN_TOKEN` to `docker run` command to authenticate your server to Steam.
