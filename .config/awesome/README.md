# Instalar iconos arc

```
git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install
```

# Instalar mpd-notification

## Añadir dependecias
```
sudo apt instal libmagic-dev -y
sudo apt install markdown -y
```
## Compilar programa
```
git clone https://github.com/eworm-de/mpd-notification.git
cd mpd-notification
make 
sudo make install
```
