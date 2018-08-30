FROM python:3.6

LABEL maintainer "Jacob See <jasee@redhat.com>"

COPY . /app

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=/app/app
ENV FLASK_DEBUG=0

CMD ["flask", "run"]

EXPOSE 5000
