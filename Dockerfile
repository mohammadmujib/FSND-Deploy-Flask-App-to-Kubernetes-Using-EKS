FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install gunicorn
RUN pip install pytest
RUN pip install pyjwt

ENTRYPOINT ["python", "main.py"]

