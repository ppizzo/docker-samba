# docker-samba
Docker suppport files for Samba.

## Build

```$ docker build -t armhf-samba .```

## Run

Create a directory ```/data/volumes/samba``` and related subdirs to be used to store shares, passwords and configuration files and then run the following command:

```
$ docker run -d --restart always --name samba --hostname samba \
     -v /dev/log:/dev/log
     -v /data/volumes/samba/share:/share -v /data/volumes/samba/etc_samba:/etc/samba \
     -v /data/volumes/samba/etc/passwd:/etc/passwd -v /data/volumes/samba/etc/shadow:/etc/shadow \
     -v /data/volumes/samba/var_lib_samba:/var/lib/samba \
     -p 445:445/tcp -p 137-138:137-138/udp -p 139:139/tcp \
     armhf-samba
```

If your setup is different, please adapt the above command to suit your environment.
