## rTorrent

### What is it?

rTorrent is a BitTorrent server & client contributed by [rakshasa](https://github.com/rakshasa/rtorrent).

### Example usages

Replace `ARCH` for your system architecture. Available option(s): `amd64`

- To run the container in background:

```console
$ docker run -v rtorrent:/rtorrent -d --name YOUR_CONTAINER_NAME -p YOUR_PORT:5000 calvintam236/rtorrent:ARCH -n -n 0.0.0.0 -p YOUR_PORT -d XXXXXXXXXXXXXX -s /rtorrent -o system.use_daemon.set = true
```

- To get `rtorrent` options with:

```console
$ docker run --rm calvintam236/rtorrent:ARCH
```

- To fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```

### Donations

If you like to buy me a cup of coffee for this Dockerfile/ docker image, you can donate to here:

- BTC: `1MTkPFtp3qxE4Y98pTHP3z767RGKmrT92a`
- ETH: `0x5896a85E8c175c563DC00087535582394d394838`
- XMR: `4ASikgNhKqmY5EjnaoDws1jjyhQy9ZrcDcCwfYVt5Rtxb6B1FqsehpLY8ZxxZD5B6r8QZKb4y1FKW1eqiS5Lph77Ca9qprU`
- ETC: `0xFaBA3be3b3De5469C3F6C6185150928F3773C7b4`
- ZEC: `t1Z5Kc75JQ17txyaDUfwwyabTgsJMfuuSp4`
