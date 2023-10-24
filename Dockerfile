#Updated python package 
#FROM python:3.8-slim

#Vulnerable python package 
FROM python:3.5-slim-buster

WORKDIR /app

COPY requirement.txt requirement.txt

RUN pip3 install -r requirement.txt

COPY app.py app.py

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
