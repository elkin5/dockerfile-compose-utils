FROM nginx

ARG USER_ID
ARG GROUP_ID

COPY ./nginx.conf /etc/nginx/nginx.conf
#COPY ./default.conf /etc/nginx/conf.d/default.conf

## add permissions for nginx user
RUN groupadd -g ${GROUP_ID} opengrok && usermod -u ${USER_ID} -g ${GROUP_ID} nginx
RUN chown -R nginx:nginx /var/cache/nginx && \
        chown -R nginx:nginx /var/log/nginx && \
        chown -R nginx:nginx /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
        chown -R nginx:nginx /var/run/nginx.pid

#RUN id nginx
USER nginx
