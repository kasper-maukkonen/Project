FROM alpine:3.18.4
RUN apk update && \
    apk add --no-cache openjdk11 python3
WORKDIR /app
COPY HelloWorld.java .
RUN javac HelloWorld.java
COPY HelloWorld.py .
CMD java HelloWorld && python3 HelloWorld.py

