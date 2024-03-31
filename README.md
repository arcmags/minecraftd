# minecraftd

Minecraftd is a wrapper script and systemd unit to host a minecraft server.

Minecraftd can start a minecraft server in the background via systemd or
directly from the command line. A simple [fifo][fifo] is created to allow
sending commands directly to the server's stdin.

Minecraftd can be run by any user that has write access to the minecraft server
directory. The systemd unit is configured to run minecraftd as user *minecraft*.

## Installation

    make install

Installation does not create a minecraft server directory. You must create a
server directory and/or congfigure minecraftd to use that directory after
installation.

Note that installation is not explicitly required to run the `minecraftd`
script. You may create a `minecraftd.conf` in any directory and run
`minecraftd` there to source it and start a minecraft server.

Minecraftd is also available in the [AUR][aur].

### Dependencies
- bash
- java
- [minecraft server jar][mcjar]

## Usage

    minecraftd [COMMAND]

### Commands

`start`
: Start minecraft server.

`stop`
: Stop minecraft server.

`command [COMMAND...]`
: Send *COMMAND* to minecraft server stdin.

`connect`
: Launch interactive minecraft server stdin prompt.

`-H`, `--help`
: Display help and exit.

## Usage: systemd

    systemctl enable minecraftd.service
    systemctl start minecraftd.service

## Configuration

Minecraftd sources the following config files (if they exist) in order:
- */etc/minecraftd.conf*
- */etc/minecraftd.d/\**
- *~/.config/minecraftd.conf*
- *./minecraftd.conf*

These files are [strictyaml][syaml] containing the following keys:

`jar`
: Minecraft server jar file. (default: */usr/share/java/minecraft-server.jar*)

`mem`
: Maximum memory allocated to minecraft server. (default: 2G)

`srv`
: Minecraft server directory. (default: */srv/minecraft*)

## Why?

This doesn't require tmux or screen as some other minecraft server control
scripts do. Don't get me wrong, I love tmux, but I'd rather not have systemd
running tmux running a server when I could just have systemd run a server.

----
[Chris Magyar](https://mags.zone)\
[MIT](https://opensource.org/licenses/MIT)

[aur]: https://aur.archlinux.org/packages/minecraftd
[fifo]: https://man7.org/linux/man-pages/man7/fifo.7.html
[mcjar]: https://www.minecraft.net/en-us/download/server
[syaml]: https://hitchdev.com/strictyaml/

<!--metadata:
author: Chris Magyar <c.magyar.ec@gmail.com>
description: Minecraft server wrapper script and systemd unit.
keywords: minecraft, minecraft server, systemd
css: ../css/main.css
-->
