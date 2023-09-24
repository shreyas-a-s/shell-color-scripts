# Shell Color Scripts

![Screenshot of shell-color-scripts](https://github.com/shreyas-a-s/shell-color-scripts/assets/137637016/13fe43a9-0917-4d42-ab94-89e590b26780)


A collection of terminal color scripts I've accumulated from github & gitlab.
Included 62+ beautiful terminal color scripts.

# Acknowledgements

- This is a fork of [Shell Color Scripts](https://gitlab.com/dwt1/shell-color-scripts) by Derek Taylor(@dwt1) from DistroTube YouTube channel. BIG thanks to him for showing his collection of shell scripts that gave me inspiration and a base code to create this repo.
- Thanks, Abhishek (@stark) for letting me steal some of scripts from his [Color-Scripts](https://github.com/stark/Color-Scripts).
- Thanks, Josh Komoroske (@joshdk) for the cool [hedgehogs](https://github.com/joshdk/hedgehogs) script.
- 

# Installation

Download the source code from this repository or use a git clone:

	git clone https://github.com/shreyas-a-s/shell-color-scripts.git
	cd shell-color-scripts
    sudo make install

    # Removal
    sudo make uninstall

    # optional for zsh completion
    sudo cp completions/_colorscript /usr/share/zsh/site-functions

    # optional for fish shell completion
    sudo cp completions/colorscript.fish /usr/share/fish/vendor_completions.d

# Usage

    colorscript --help
    Description: A collection of terminal color scripts.

    Usage: colorscript [OPTION] [SCRIPT NAME/INDEX]
    -h, --help, help        	Print this help.
    -l, --list, list        	List all installed color scripts.
    -r, --random, random    	Run a random color script.
    -e, --exec, exec        	Run a specified color script by SCRIPT NAME or INDEX.
    -a, --all, all          	List the outputs of all colorscripts with their SCRIPT NAME
    -b, --blacklist, blacklist	Blacklist a color script by SCRIPT NAME or INDEX.

# The Scripts Are Located in /opt/shell-color-scripts/colorscripts

The source for shell-color-scripts is placed in:

	/opt/shell-color-scripts/colorscripts

For even more fun, add the following line to your .bashrc or .zshrc and you will run a random color script each time you open a terminal:

	### RANDOM COLOR SCRIPT ###
	colorscript random
