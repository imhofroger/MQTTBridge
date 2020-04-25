FROM python:3.7-alpine

LABEL maintainer="imhofroger" \
      description="MQTT to InfluxDB Bridge"

COPY . /app
WORKDIR /app

CMD ["python", "./main.py"]
