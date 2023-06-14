FROM debian:latest
ENV PYTHONUNBUFFERED=1
ENV LD_LIBRARY_PATH=/app/oracle
RUN apt-get update
RUN apt-get -y install python3 && ln -sf python3 /usr/bin/python
RUN apt-get -y install python3-dev
RUN apt-get -y install python3-pip
#RUN pip3 install setuptools
RUN apt-get -y install python3-setuptools

ENTRYPOINT ["sleep", "3000"]
