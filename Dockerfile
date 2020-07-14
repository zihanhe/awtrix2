FROM  anapsix/alpine-java:8_jdk

WORKDIR /data

RUN wget https://blueforcer.de/awtrix/stable/awtrix.jar -O ./awtrix.jar

EXPOSE 7000 7001

ENTRYPOINT ["java" ,"-jar" ,"/data/awtrix.jar"]