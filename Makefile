clean: 
	rm -rf /opt/shell-color-scripts

install: clean
	mkdir -p /opt/shell-color-scripts/colorscripts
	cp -rf colorscripts/* /opt/shell-color-scripts/colorscripts
	cp colorscript.sh /usr/local/bin/colorscript
	sudo apt install lolcat -y

uninstall:
	rm -rf /opt/shell-color-scripts
	rm -f /usr/local/bin/colorscript

