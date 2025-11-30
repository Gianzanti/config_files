# After Ubunty Fresh Install (25.10)

## Update OS
```bash
sudo apt update
sudo apt upgrade
sudo apt autoremove
```

## Install utilities
```bash
sudo apt install curl git eza bat zoxide
```
--- 

## Install Kitty Terminal

### Download and install it
```bash
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

### Integrate kitty to the desktop
```bash
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=$(readlink -f ~)/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=$(readlink -f ~)/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
echo 'kitty.desktop' > ~/.config/xdg-terminals.list
```

### Install jetbrains nerd font
```bash
curl -L -O https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.fonts
fc-cache -fv
rm JetBrainsMono.zip
```

### Copy the config file
```bash
curl -LJ -o ~/.config/kitty/kitty.conf https://raw.githubusercontent.com/Gianzanti/config_files/refs/heads/main/kitty.conf
kill -SIGUSR1 $(pgrep kitty)
```
---
## Install ZSH
```bash
sudo apt install zsh -y
chsh -s $(which zsh)
```
---
## Install Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install Oh My Zsh Plugins
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
```

---
## Install Starship

### Download and install it
```bash
curl -sS https://starship.rs/install.sh | sh
```

### Copy the config file
```bash
curl -LJ -o ~/.config/starship.toml https://raw.githubusercontent.com/Gianzanti/config_files/refs/heads/main/starship.toml
kill -SIGUSR1 $(pgrep kitty)
```

## Copy zshrc
```bash
curl -LJ -o ~/.zshrc https://raw.githubusercontent.com/Gianzanti/config_files/refs/heads/main/.zshrc
```

---
## Install Neovim

### Install necessary packages
```bash
sudo apt install software-properties-common build-essential
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim
```
