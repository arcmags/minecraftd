# minecraftd

Minecraftd is a wrapper script and systemd unit to host a minecraft server.

Minecraftd can start a minecraft server in the background via systemd or
directly from the command line. A simple [fifo][fifo] is created to allow
sending commands directly to the server's stdin.

Minecraftd can be run by any user that has write access to the minecraft server
directory. If your server is visible to the internet, you should probably not
run minecraftd as your normal user account. The systemd unit is configured to
run as user *minecraft*.

## Installation

    make install

Note that installation is not explicitly required to run the `minecraftd`
script. You may create a `minecraftd.conf` in any directory and run
`minecraftd` there to source it and start a minecraft server.

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

## Configuration

Minecraftd sources the following config files (if they exist) in order:
- */etc/minecraftd.conf*
- */etc/minecraftd.d/\**
- *~/.config/minecraftd.conf*
- *./minecraftd.conf*

These files are [strictyaml][syaml] containing the following keys:

`jar`
: Minecraft server jar file. (default: */usr/share/java/mcserver.jar*)

`mem`
: Maximum memory allocated to minecraft server. (default: 2G)

`srv`
: Minecraft server directory. (default: */srv/minecraft*)

## Why?

I wanted a simple minecraft server wrapper that didn't require tmux or screen.
Don't get me wrong, I love tmux, but I don't think I want systemd running tmux
running a server when I could just have systemd run the server.

----
[Chris Magyar](https://mags.zone)\
[MIT](https://opensource.org/licenses/MIT)

[fifo]: https://man7.org/linux/man-pages/man7/fifo.7.html
[mcjar]: https://www.minecraft.net/en-us/download/server
[syaml]: https://hitchdev.com/strictyaml/

<!--metadata:
author: Chris Magyar <c.magyar.ec@gmail.com>
description: Automated symbolic link creator.
keywords: uln, link, symbolic link
css: ../css/main.css
-->
