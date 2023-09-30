FROM python:3.11-alpine3.18

COPY requirements.txt /temp/requirements.txt
RUN pip install -r /temp/requirements.txt
COPY service /service
WORKDIR /service
EXPOSE 8000



RUN adduser --disabled-password service-user

USER service-user

