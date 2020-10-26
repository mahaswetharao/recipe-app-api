# recipe-app-api
Recipe app api code

<b>Docker</b>

<b>Docker Setup</b>

docker build .
docker-compose build
docker-compose run app sh -c "django-admin.py startproject app ."

<b>Run Test</b>

docker-compose run app sh -c "python manage.py test"
docker-compose run app sh -c "python manage.py test && flake8"
docker-compose run app sh -c "python manage.py startapp core"
docker-compose run app sh -c "python manage.py makemigrations core"
docker-compose run app sh -c "python manage.py test && flake8 --exclude=*/migrations/*,*/settings.py"
docker-compose up