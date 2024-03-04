PREFIX ?=

.PHONY: null
null:
	@:

.PHONY: install
install:
	install -Dm644 minecraftd $(PREFIX)/usr/bin/minecraftd
	install -Dm644 src/minecraftd.conf $(PREFIX)/etc/minecraft.conf
	install -Dm644 src/minecraft.conf $(PREFIX)/usr/lib/sysusers.d/minecraft.conf
	install -Dm644 src/minecraftd.service $(PREFIX)/usr/lib/systemd/system/minecraftd.service
	mkdir -p $(PREFIX)/srv/minecraft

.PHONY: uninstall
uninstall:
	rm $(PREFIX)/usr/bin/minecraftd
	rm $(PREFIX)/etc/minecraft.conf
	rm $(PREFIX)/usr/lib/sysusers.d/minecraft.conf
	rm $(PREFIX)/usr/lib/systemd/system/minecraftd.service
