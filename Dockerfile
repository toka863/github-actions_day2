FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

COPY app ./app

EXPOSE 8000

CMD ["python", "app/app.py"]
