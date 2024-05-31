# Usa una imagen base de OpenJDK 17
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR de tu aplicación al directorio de trabajo del contenedor
COPY ms-auth.jar /app/ms-auth.jar

# Expone el puerto en el que tu aplicación está escuchando (modifica según sea necesario)
EXPOSE 8089

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app/ms-auth.jar"]