FROM daocloud.io/library/java:6b34-jdk

MAINTAINER hl.l "liuhonglinh@163.com"

RUN mkdir -p /lhl/jar

COPY ./target/helloboot.jar /lhl/jar/

EXPOSE 8080

CMD cd /lhl/jar/ && nohup java -jar helloboot.jar 2>&1 1>dev/null &