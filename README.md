Step

1. Enter transactional shell

```sh
sudo -s
transactional-update shell
```

2. Install require packages

```sh
zypper -n install curl git make neovim stow tree vi yt-dlp && \
    # Import Microsoft GPG key
    rpm --import https://packages.microsoft.com/keys/microsoft.asc && \
    # Add the VS Code Repository
    echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" \
    | tee /etc/zypp/repos.d/vscode.repo > /dev/null && \
    # Add Google Antigravity Repository
    zypper ar -f -G https://us-central1-yum.pkg.dev/projects/antigravity-auto-updater-dev/antigravity-rpm antigravity-rpm && \
    # Add fonts Repository
    zypper ar https://download.opensuse.org/repositories/M17N:fonts/openSUSE_Tumbleweed/M17N:fonts.repo && \
    # Refresh repositories and install VSCode, Antigravity 
    zypper -n ref && \
    zypper -n install code antigravity thai-fonts
```

3. Make sudo without password 

```sh
sudo cp -v 40-run0-nopasswd.rules /etc/polkit-1/rules.d/
sudo groupadd wheel
sudo usermod -aG wheel $USER
```



