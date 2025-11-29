# tasks after install ubuntu

## update OS
```bash
sudo apt update
sudo apt upgrade
sudo apt autoremove
```

## install curl
```bash
sudo apt install curl
```

## install kitty
```bash
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

## integrate kitty to the desktop
```bash
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=$(readlink -f ~)/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=$(readlink -f ~)/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
echo 'kitty.desktop' > ~/.config/xdg-terminals.list
```

## install jetbrains nerd font
```bash
curl -O https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
# mkdir ~/.fonts
unzip JetBrainsMono.zip -d ~/.fonts
fc-cache -fv
```

## copy the kitty.conf file
```bash
curl -o /path/to/your/folder/newfilename.extension http://example.com/originalfile.extension
```
