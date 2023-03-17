FROM python:3.10

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install libpq-dev netcat -y 



COPY ./req.txt /usr/src/app/
RUN /usr/local/bin/python3.10 -m pip install --upgrade pip

RUN pip install -r req.txt

COPY . /usr/src/app/




