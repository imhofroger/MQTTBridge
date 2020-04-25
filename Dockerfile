FROM python:3.7-alpine

LABEL maintainer="imhofroger" \
      description="MQTT to InfluxDB Bridge"

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY . /app
WORKDIR /app

CMD ["python", "./main.py"]
