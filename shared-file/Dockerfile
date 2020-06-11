FROM ubuntu

RUN groupadd -g 1000 docker
RUN useradd -ms /bin/bash -u 1000 -g 1000 docker
RUN mkdir /app

RUN chown --changes --silent --no-dereference --recursive --from=0:0 1000:1000 /app /usr

RUN cd /app && touch share.txt

COPY entrypoint.sh /usr/local/bin/
RUN chmod -R +x /usr/local/bin 

USER docker
# Sirve para copiar el archivo. Tambienn puede hhacerse directamente con un CMD
ENTRYPOINT ["entrypoint.sh"]
# Sirve para si o lanzo con -it tenga una entrada
CMD /bin/bash
