FROM python:3
ADD requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
ADD . /app
ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /usr/loca/bin/wait-for-it
RUN chmod +x /app/entrypoint.sh /usr/loca/bin/wait-for-it
ENTRYPOINT [ "/app/entrypoint.sh" ]