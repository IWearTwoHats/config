# Here is my .bashrc file. It's got some simple things.

# Do nothing for non-interactive prompts.
case $- in
	*i*) ;;
	*) return;;
esac

# Add locations to PATH.
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "$HOME/bin" ]; then
	PATH="$HOME/bin:$PATH"
fi

# Ignore double lines and lines starting with spaces in history.
HISTCONTROL=ignoreboth

# Append to history.
shopt -s histappend

# History size.
HISTSIZE=1000
HISTFILESIZE=2000

# Modular bashrc.d.
if [ -d "$HOME/.bashrc.d" ]; then
	for f in $HOME/.bashrc.d/*; do
		. "$f"
	done
fi

# Add aliases.
if [ -f "$HOME/.bash_aliases" ]; then
	. "$HOME/.bash_aliases"
fi

# Apply ANSI color theme. (if present)
if [ -f "$HOME/.ansi_theme" ]; then
	cat "$HOME/.ansi_theme"
fi

# Run script that greets the user. (if present)
if [ -f "$HOME/.bash_greet" ]; then
	bash "$HOME/.bash_greet"
else
	# If greet script not found, run fastfetch.
	if [ -x "/usr/bin/fastfetch" ]; then
		/usr/bin/fastfetch --color magenta --logo-color-1 white --logo-color-2 cyan --color-title green
	fi
fi
