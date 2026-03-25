Step

1. Enter transactional shell

```sh
sudo -s
transactional-update shell

# Remove DVD Repository
zypper rr openSUSE-MicroOS-20260307-0
```

2. Install require packages

```sh
# Remove default Firefox flatpak
flatpak uninstall --user -y org.mozilla.firefox

# Remove Falkon Browser
zypper -n rm falkon  

zypper -n install curl firefox git make neovim python313-podman-compose stow tree yt-dlp  
```

3. Add VSCode Repository

```sh
# Import Microsoft GPG key
rpm --import https://packages.microsoft.com/keys/microsoft.asc

# Add the VS Code Repository
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/zypp/repos.d/vscode.repo > /dev/null
```

4. Add Google Antigravity Repository

```sh
zypper ar -f -G https://us-central1-yum.pkg.dev/projects/antigravity-auto-updater-dev/antigravity-rpm antigravity-rpm 
```

5. Add fonts Repository

```sh
zypper ar https://download.opensuse.org/repositories/M17N:fonts/openSUSE_Tumbleweed/M17N:fonts.repo && \
```

6. Install VSCode Antigravity Thai-font

```sh
zypper -n ref && zypper -n install code antigravity thai-fonts
```

7. Install WaveTerminal

```sh
curl -o wave-terminal.rpm https://dl.waveterm.dev/releases-w2/waveterm-linux-x86_64-0.14.3.rpm
zypper in wave-terminal.rpm
```

8. Make sudo without password 

```sh
sudo cp -v 40-run0-nopasswd.rules /etc/polkit-1/rules.d/
sudo groupadd wheel
sudo usermod -aG wheel $USER
```

9. Install Flatpak Applications

```sh
flatpak install --user -y flathub org.keepassxc.KeePassXC
flatpak install --user -y flathub org.telegram.desktop
flatpak install --user -y flathub com.interversehq.qView
flatpak install --user -y flathub com.google.Chrome
flatpak install --user -y flathub org.kde.okular
```



