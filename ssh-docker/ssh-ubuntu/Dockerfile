FROM ubuntu

ENV SSH_PORT 2222
ENV TZ America/Bogota

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update -y && apt-get install openssh-server -y 
RUN mkdir -p /var/run/sshd
RUN echo 'root:123' | chpasswd

COPY sshd_config /etc/ssh/
COPY entrypoint.sh /usr/local/bin/
RUN chmod -R +x /usr/local/bin

EXPOSE 2222

ENTRYPOINT ["entrypoint.sh"]
CMD ["/usr/sbin/sshd", "-D"]
