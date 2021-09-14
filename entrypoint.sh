#!/usr/bin/env bash

case "$1" in
    migrate) 
        /usr/loca/bin/wait-for-it postgres:5432 --timeout=1 --strict -- echo "postgres is up"
        python manage.py migrate
        ;;
    server) 
        python manage.py runserver
        ;;
    *)
        echo "Default command"
        $0 migrate
        $0 server
        ;;
esac
