FROM python:2.7
MAINTAINER Haroon Sheikh <haroon@sitture.com>

ENV PYTHONUNBUFFERED 1

# Install all the dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN pip install MySQL-python
RUN rm -rf /root/.cache

WORKDIR /code/src/

COPY . /code/

# run the tests before building the container
ENV DJANGO_SETTINGS_MODULE=django_app.settings.local

# expose the port
EXPOSE 8000

CMD python manage.py migrate && python manage.py runserver 0.0.0.0:8000
