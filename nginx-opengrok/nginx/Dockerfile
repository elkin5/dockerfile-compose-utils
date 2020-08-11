FROM nginx:1.19.0

ARG USER_ID
ARG GROUP_ID

COPY ./nginx.conf /etc/nginx/nginx.conf

## add permissions for nginx user
RUN groupadd -g ${GROUP_ID} opengrok && usermod -u ${USER_ID} -g ${GROUP_ID} nginx && \
        chown -R nginx:nginx /var/cache/nginx && \
        chown -R nginx:nginx /var/log/nginx && \
        chown -R nginx:nginx /etc/nginx/conf.d && \
        touch /var/run/nginx.pid && \
        chown -R nginx:nginx /var/run/nginx.pid

USER nginx
