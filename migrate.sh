#!/bin/bash
python manage.py makemigrations polls
python manage.py sqlmigrate polls 0001
python manage.py migrate
exec "$@"
