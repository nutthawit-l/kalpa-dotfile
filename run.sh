#!/usr/bin/bash

flatpak_install() {
    local title=$1
    local app_name=$2

	if flatpak list --app | grep "$title" > /dev/null; then
		echo -e "${BLUE}[Skip]${NC} Install ${title} with flatpak"
	else
		flatpak install --user -y flathub "$app_name"
	fi
}

main() {
	CONTAINER_NAME=suse
	
	# Define color code
	BLUE='\033[0;34m'
	GREEN='\033[0;32m'
	NC='\033[0m' # No color
	
	# Create suse distrobox
	if distrobox list | grep -qw "$CONTAINER_NAME"; then
		echo -e "${BLUE}[Skip]${NC} Create ${CONTAINER_NAME} distrobox"
	else
		echo -e "${GREEN}[Run]${NC} Create ${CONTAINER_NAME} distrobox"
		distrobox assemble create --file suse.ini
	fi
	
	# Install flatpak apps
	flatpak_install KeePassXC flathub org.keepassxc.KeePassXC
	flatpak_install Telegram org.telegram.desktop
	
	# Allow me execute any command without password
	#sudo cp -v "${CURRENT_DIR}/40-run0-nopasswd.rules" /etc/polkit-1/rules.d/
}

main


