create-template-opensuse-tumbleweed:
	podman build -t opensuse-tumbleweed-template -f Containerfile-OpenSUSE-Tumbleweed-Template
create-opensuse-tumbleweed:
	#distrobox rm -f opensuse-tumbleweed && distrobox create -i localhost/opensuse-tumbleweed-template -n opensuse-tumbleweed
	distrobox assemble create --replace --file opensuse-tumbleweed.ini
enter-opensuse-tumbleweed:
	distrobox enter opensuse-tumbleweed
