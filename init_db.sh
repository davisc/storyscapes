#!/bin/sh
echo "------ Create database tables ------"
python manage.py syncdb --noinput

echo "------ create default admin user ------"
echo "from geonode.people.models import Profile; Profile.objects.create_superuser('admin', 'admin@mapstory.com', 'admin')" | python manage.py shell

echo "------ starting gunicorn  ------"
gunicorn mapstory.wsgi --log-level=debug --logger-class=simple -b 0.0.0.0:$PORT
