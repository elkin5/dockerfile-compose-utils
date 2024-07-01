# Usa una imagen base de OpenJDK 17
FROM eclipse-temurin:17-alpine
LABEL version="1.0.0" maintainer="efosorio@bancolombia.com.co" description="Core SAF"
ENV TZ America/Bogota

# Expone el puerto en el que tu aplicación está escuchando (modifica según sea necesario)
EXPOSE 8082

# Instala fontconfig y bash
RUN apk add --no-cache fontconfig bash

# Crea un directorio para archivos temporales y establece permisos
RUN mkdir -p /tmp/jasperreports_temp \
    && chmod 777 /tmp/jasperreports_temp

# Establece la variable de entorno para JasperReports
ENV JASPER_REPORTS_TEMPLATES_DIR=/tmp/jasperreports_temp

# Crea un directorio para la caché de Fontconfig y establece permisos
RUN mkdir -p /var/cache/fontconfig \
    && chmod 777 /var/cache/fontconfig

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR de tu aplicación al directorio de trabajo del contenedor
COPY ms-obligation.jar /app/ms-obligation.jar

# Expone el puerto en el que tu aplicación está escuchando (modifica según sea necesario)
EXPOSE 8082

# Comando para ejecutar la aplicación
ENV JAVA_OPTS="-XX:+UseContainerSupport -Djava.security.egd=file:/dev/./urandom -Djava.io.tmpdir=/tmp/jasperreports_temp"
# USER appuser
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app/ms-obligation.jar"]