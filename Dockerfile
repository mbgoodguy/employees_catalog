FROM python:3.9-alpine3.16

COPY requirements.txt /temp/requirements.txt

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r /temp/requirements.txt

COPY employees_catalog_app /employees_catalog_app
WORKDIR /employees_catalog_app
EXPOSE 8000

RUN adduser --disabled-password service-user

USER service-user