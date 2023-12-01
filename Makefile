#  ██████╗ ██████╗ ██╗      ██████╗ ██████╗ ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗███████╗
# ██╔════╝██╔═══██╗██║     ██╔═══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
# ██║     ██║   ██║██║     ██║   ██║██████╔╝███████╗██║     ██████╔╝██║██████╔╝   ██║   ███████╗
# ██║     ██║   ██║██║     ██║   ██║██╔══██╗╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ╚════██║
# ╚██████╗╚██████╔╝███████╗╚██████╔╝██║  ██║███████║╚██████╗██║  ██║██║██║        ██║   ███████║
#  ╚═════╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚══════╝

clean:
	rm -rf /opt/shell-color-scripts

install: clean
	mkdir -p /opt/shell-color-scripts/colorscripts
	cp -rf colorscripts/* /opt/shell-color-scripts/colorscripts
	cp colorscript.sh /usr/local/bin/colorscript
	@if command -v apt-get > /dev/null; then \
		apt-get -y install lolcat; \
	elif command -v pacman > /dev/null; then \
		pacman -S lolcat --noconfirm; \
	fi
	@if [ -d /usr/share/zsh/site-functions ]; then \
		sudo cp completions/_colorscript /usr/share/zsh/site-functions/; \
	fi
	@if [ -d /usr/share/fish/vendor_completions.d ]; then \
		sudo cp completions/colorscript.fish /usr/share/fish/vendor_completions.d/; \
	fi

uninstall:
	rm -rf /opt/shell-color-scripts
	rm -f /usr/local/bin/colorscript

