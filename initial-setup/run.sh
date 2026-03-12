#!/usr/bin/bash

CURRENT_DIR=initial-setup
CONTAINER_NAME=suse

# Define color code
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No color

if distrobox list | grep -qw "$CONTAINER_NAME"; then
	echo -e "${BLUE}[Skip]${NC} Create ${CONTAINER_NAME} distrobox"
else
	echo -e "${GREEN}[Run]${NC} Create ${CONTAINER_NAME} distrobox"
	distrobox assemble create --file "${CURRENT_DIR}/suse.ini"
fi

