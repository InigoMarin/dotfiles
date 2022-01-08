export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"

# Default programs:
export EDITOR="lvim"
export VISUAL="lvim"
export TERMINAL="st"
export BROWSER="brave-browser-stable"
export BROWSERCLI="w3m"
export LANG=en_US.UTF-8
export LANGUAGE=en

export _JAVA_AWT_WM_NONREPARENTING=1	# Fix for Java applications in dwm



. "$HOME/.cargo/env"
