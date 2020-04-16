FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt
RUN pip install flask

EXPOSE 8080

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

