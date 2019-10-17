# nwabap752
nwabap752 dev edition notes

```
docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

docker build -t nwabap752 .

docker run -p 8000:8000 -p 44300:44300 -p 3300:3300 -p 3200:3200 -h vhcalnplci --name nwabap752 -it nwabap752 /bin/bash

docker cp TD752SP04part01.rar nwabap752:/tmp/
docker cp TD752SP04part02.rar nwabap752:/tmp/
docker cp TD752SP04part03.rar nwabap752:/tmp/
docker cp TD752SP04part04.rar nwabap752:/tmp/
docker cp TD752SP04part05.rar nwabap752:/tmp/
docker cp TD752SP04part06.rar nwabap752:/tmp/
docker cp TD752SP04part07.rar nwabap752:/tmp/
docker cp TD752SP04part08.rar nwabap752:/tmp/
docker cp TD752SP04part09.rar nwabap752:/tmp/
docker cp TD752SP04part10.rar nwabap752:/tmp/
docker cp TD752SP04part11.rar nwabap752:/tmp/
```
