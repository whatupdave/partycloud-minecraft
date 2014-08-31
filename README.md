partycloud-minecraft
==============

Docker container that runs a vanilla Minecraft server.

Usage:

```
docker run -p 25565:25565 -id -v ~/minecraft:/data whatupdave/partycloud-minecraft

```

If you want persistent storage on s3:

```
docker run -d -e ACCESS_KEY=... -e SECRET_KEY=... --name data whatupdave/s3-volume s3://<BUCKET>/<PATH>
docker run -p 25565:25565 -id --volumes-from data whatupdave/partycloud-minecraft
```
