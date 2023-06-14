FROM debian:latest
ENV PYTHONUNBUFFERED=1
ENV LD_LIBRARY_PATH=/app/oracle
RUN apt-get update
RUN apt-get -y install cron
RUN apt-get -y install gcc
RUN apt-get -y install python3 && ln -sf python3 /usr/bin/python
RUN apt-get -y install libaio1
RUN apt-get -y install python3-dev
RUN apt-get -y install musl-dev
RUN apt-get -y install unzip
RUN apt-get -y install python3-pip
RUN pip3 install setuptools
CMD ["sleep 3000"]
