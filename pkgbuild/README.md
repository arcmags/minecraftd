# minecraftd pkgbuilds

This directory contains the [PKGBUILD][pkgbuild] files for building minecraftd
and minecraft-server-jar.

Unlike similar AUR packages, [minecraftd][aur] does not include the official
minecraft [jar file][mcjar]. Rather, minecraftd has
[minecraft-server-jar][aurjar] as a dependency to install the official jar.
This is done for several reasons:

- minecraftd and the official jar have different software licenses
- it allows minecraftd and the official jar to be updated independently
- it allows for the usage of older jar files

----
[Chris Magyar](https://mags.zone)\
[MIT](https://opensource.org/licenses/MIT)

[pkgbuild]: https://wiki.archlinux.org/title/PKGBUILD
[aur]: https://aur.archlinux.org/packages/minecraftd
[aurjar]: https://aur.archlinux.org/packages/minecraft-server-jar
[mcjar]: https://www.minecraft.net/en-us/download/server

<!--metadata:
author: Chris Magyar <c.magyar.ec@gmail.com>
description: minecraftd and minecraft-server-jar pkgbuild files
keywords: minecraft-server, minecraftd, aur, pkgbuild
css: ../../css/main.css
-->
