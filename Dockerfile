FROM adoptopenjdk:11.0.9.1_1-jdk-hotspot

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
