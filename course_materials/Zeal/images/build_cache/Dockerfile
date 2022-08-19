FROM python:3.7-slim-buster

COPY . .

RUN pip install --quiet -r requirements.txt

ENTRYPOINT [ "python", "server.py" ]