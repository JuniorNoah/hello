# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY . .
RUN pip install flask

CMD ["python", "-m", "flask",  "run", "--host=0.0.0.0"]