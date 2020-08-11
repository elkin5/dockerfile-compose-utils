FROM elkin5/opengrok-open:v1

ARG USER_ID
ARG GROUP_ID

RUN groupadd -g $GROUP_ID opengrok && \
	useradd -ms /bin/bash -u $USER_ID -g $GROUP_ID opengrok && \
	chown -R opengrok /usr/local/tomcat /opengrok /var/run
