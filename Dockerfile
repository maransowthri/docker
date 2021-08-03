FROM python:3.10.0a5-alpine3.13

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r ./requirements.txt

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]