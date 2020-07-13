export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave-browser-stable"

export _JAVA_AWT_WM_NONREPARENTING=1	# Fix for Java applications in dwm


