FROM openjdk:12-alpine

RUN apk add tzdata wget && \
    cp /usr/share/zoneinfo/Pacific/Auckland /etc/localtime && \
    echo "Pacific/Auckland" > /etc/timezone && \
    wget -P /awtrix https://blueforcer.de/awtrix/stable/awtrix.jar && \
    apk del tzdata wget

EXPOSE 7000 7001

WORKDIR /awtrix

CMD ["java","-jar","/awtrix/awtrix.jar"]
