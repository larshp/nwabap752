FROM opensuse/leap:latest
RUN zypper --non-interactive install --replacefiles uuidd hostname wget unrar tcsh tar which net-tools iproute2
RUN mkdir /run/uuidd && chown uuidd /var/run/uuidd && /usr/sbin/uuidd
RUN echo $'#!/bin/bash \n\
echo "Free space - initial:" \n\
df -h \n\
mkdir /tmp/nwabap \n\
unrar x /tmp/*part01.rar /tmp/nwabap \n\
echo "Free space - after extraction" \n\
df -h \n\
rm /tmp/*.rar \n\
echo "Free space - after RAR deletion" \n\
df -h \n\
chmod +x /tmp/nwabap/install.sh \n\
/tmp/nwabap/install.sh -s \n\
echo "Free space - after installation" \n\
df -h' >> /tmp/install.sh; chmod +x /tmp/install.sh
EXPOSE 8000
EXPOSE 44300
EXPOSE 3300
EXPOSE 3200
