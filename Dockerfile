FROM python:3.6.1-alpine
RUN pip install --upgrade pip
RUN pip install flask flask_sqlalchemy
COPY ./src /app
WORKDIR /app
CMD ./run.sh
