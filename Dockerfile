FROM python:3.8-slim-buster

RUN pip install --upgrade pip

WORKDIR /app

RUN python3 -m venv /project-env

COPY requirements.txt /app/requirements.txt

RUN . /project-env/bin/activate && pip3 install  -r requirements.txt

# Bundle app source
COPY . .

RUN ls /app

EXPOSE 5005


CMD ["/project-env/bin/python3","app1.py"]
