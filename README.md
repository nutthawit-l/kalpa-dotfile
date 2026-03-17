Step

1. ```sudo -s```

2. ```transactional-update pkg in make```

3. ```bash
	sudo cp -v 40-run0-nopasswd.rules /etc/polkit-1/rules.d/
        sudo groupadd wheel
        sudo usermod -aG wheel $USER```

4. ```make create-template-opensuse-tumbleweed```

5. ```make create-opensuse-tumbleweed```


Todo

1. Install Thai font


