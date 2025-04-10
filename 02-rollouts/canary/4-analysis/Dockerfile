FROM busybox:latest

WORKDIR /src

ADD run-load.sh .

RUN chmod a+x run-load.sh

#ENDPOINT="http://api-192.168.39.201.nip.io/api/data"
ENV DURATION=5 ENDPOINT="http://localhost/api/data"

SHELL [ "/bin/sh", "-c" ]

ENTRYPOINT /src/run-load.sh
