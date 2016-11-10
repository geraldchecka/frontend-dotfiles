DOTFILE_DIR="$HOME/.dotfiles"

for DOTFIEL in "$DOTFILE_DIR"/bash/.{function,aliases}; do
    source "$DOTFIEL";
done

# Source file is extra dir

EXTRA_DIR="$HOME/.extra"

if [ -d "$EXTRA_DIR" ]; then
	for EXTRAFILE in "$EXTRA_DIR"/*.sh; do
		[ -f "$EXTRAFILE" ] && . "$EXTRAFILE"
	done
fi

# export NODE_PATH="/usr/local/lib/node_modules"
# export PATH="/Users/xuhong/yz_env/php/bin:$PATH"
