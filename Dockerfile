FROM alpine:3.6

RUN apk update 
RUN apk add openssh-client bash nano rsync

WORKDIR /root

ADD add-key /bin
RUN chmod +x /bin/add-key

ADD init.sh /root
RUN chmod +x /root/init.sh

ADD ssh_config /etc/ssh/ssh_config

CMD ["bash", "-c", "/root/init.sh"]