FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir flask gunicorn

CMD exec gunicorn --bind :8080 --workers 1 --threads 8 --timeout 0 "app:create_app()"   
