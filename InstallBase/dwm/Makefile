all: dependencies clipnotify clipmenu dwm st dwmblocks desktop clean

dependencies:
	sudo apt install libxft-dev libx11-dev libxinerama-dev  libx11-xcb-dev libxcb-res0-dev libxfixes-dev xsel -y
dwm:
	git clone https://github.com/InigoMarin/dwm.git && cd dwm && sudo make install

st:
	git clone https://github.com/InigoMarin/st.git && cd st && sudo make install

dwmblocks:
	git clone https://github.com/InigoMarin/dwmblocks.git && cd dwmblocks && sudo make install

clipnotify:
	git clone https://github.com/cdown/clipnotify.git && cd clipnotify && make && sudo cp clipnotify /usr/local/bin

clipmenu:
	git clone https://github.com/cdown/clipmenu.git && cd clipmenu && sudo make install

desktop:
	sudo cp dwm-modified.desktop /usr/share/xsessions/
	sudo cp dwm-start /usr/local/bin/

clean:
	rm -fr dwm
	rm -fr st
	rm -fr dwmblocks
	rm -fr clipnotify
	rm -fr clipmenu
