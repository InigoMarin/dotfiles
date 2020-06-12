all: dwm st desktop clean

dwm:
	git clone https://github.com/InigoMarin/dwm.git && cd dwm && sudo make install

st:
	git clone https://github.com/InigoMarin/st.git && cd st && sudo make st

desktop:
	sudo cp dwm-modified.desktop /usr/share/xsessions/
	sudo cp dwm-start /usr/local/bin/

clean:
	rm -fr dwm
	rm -fr st

