# docker-django-cd

[![Build Status](https://travis-ci.org/sitture/docker-django-cd.svg?branch=master&style=flat-square)](https://travis-ci.org/sitture/docker-django-cd) [![Requirements Status](https://requires.io/github/sitture/docker-django-cd/requirements.svg?branch=master)](https://requires.io/github/sitture/docker-django-cd/requirements/?branch=master)

A docker-based Project running Django application with Mysql.

## Prerequisites

+ `Python 2.7`
+ `pip` https://pypi.python.org/pypi/pip

## Setting up the project

### Using a Virtual Environment (Recommended)

Create a virtual environment `djangodocker` and activate.

```bash
pip install virtualenv
virtualenv djangodocker
cd djangodocker
source bin/activate
```

### Clone the repository

```bash
git clone git@github.com:sitture/docker-django-cd.git .
```

### Install required packages

```bash
pip install -r requirements.txt
```

## Running the Django server locally

Once the above packages are installed successfully, you should then be able to run the django server.

To run the application locally, open the file `src/django_app/settings/local.py` and set `DEBUG` to `True`.

```bash
cd src
python manage.py runserver
```

## Running the Tests

From the `src` directory, run the below to execute tests.

```bash
python manage.py test
```

## Docker time
If you are comfortable using Docker, you can build this image, run it using sqlite inner database or run it using docker compose along with a MySQL server.

### Docker image
As you can imagine, the only command to build this image is:

```bash
docker build -t docker-django:0.1.0 .
```

If the image fails on the building process, check out the log, could be failing tests.

Once the image is built, you can run it:

```bash
docker run -d -p 8000:8000 docker-django:0.1.0
```

### Docker Compose
You can run this image using the `docker-compose.yml` file. Using it you can test this application with a MySQL Server configuration. In order to get this stack running locally:

```bash
docker-compose up -d
```

This stack uses a `.env` file containing the environment variables needed to run both web and database server.

# Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
