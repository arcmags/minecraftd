PREFIX ?=

.PHONY: null
null:
	@:

.PHONY: install
install:
	install -Dm755 LICENSE $(PREFIX)/usr/share/licenses/minecraftd/LICENSE
	install -Dm755 minecraftd $(PREFIX)/usr/bin/minecraftd
	install -Dm644 src/minecraft.conf $(PREFIX)/usr/lib/sysusers.d/minecraft.conf
	install -Dm644 src/minecraftd.conf $(PREFIX)/etc/minecraftd.conf
	install -Dm644 src/minecraftd.service $(PREFIX)/usr/lib/systemd/system/minecraftd.service

.PHONY: uninstall
uninstall:
	rm -r $(PREFIX)/usr/share/licenses/minecraftd
	rm $(PREFIX)/usr/bin/minecraftd
	rm $(PREFIX)/etc/minecraftd.conf
	rm $(PREFIX)/usr/lib/sysusers.d/minecraft.conf
	rm $(PREFIX)/usr/lib/systemd/system/minecraftd.service
