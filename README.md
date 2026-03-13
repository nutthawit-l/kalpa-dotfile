1. Create distrobox named `suse` for store an essential tools

```sh
bash run.sh
```

Todo

1. Install Thai font
2. Running pre_init_hooks and init_hooks every time a container is created is too slow. This has been fixed by baking everything into a new image, allowing it to be downloaded and run immediately.