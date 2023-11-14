FROM debian:12-slim
RUN mkdir -p /root/scripting
COPY ./sourcemod /root/sourcemod
RUN find /root/sourcemod -type f -name "spcomp*" -exec chmod 755 {} \;
