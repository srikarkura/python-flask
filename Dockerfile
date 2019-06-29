FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y python-dev python-pip

COPY ./requirements.txt /python-app/requirements.txt
WORKDIR /python-app
RUN pip install -r requirements.txt

COPY ./hello.py /python-app/hello.py

EXPOSE 80

ENTRYPOINT ["python2", "hello.py"]

