FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
RUN cd  /code/
RUN python manage.py migrate
RUN python manage.py makemigrations polls
RUN python manage.py sqlmigrate polls 0001
