FROM ubuntu

ENV SSH_PORT 2222
ENV TZ America/Bogota

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y
RUN apt install openssh-server -y 
RUN apt install supervisor -y 
RUN mkdir -p /var/run/sshd /var/log/supervisor
RUN echo 'root:Docker!' | chpasswd

COPY sshd_config /etc/ssh/
ADD supervisord.conf /etc/supervisord.conf
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod -R +x /usr/local/bin

EXPOSE 2222

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
