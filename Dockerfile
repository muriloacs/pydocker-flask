FROM python:3

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

USER uwsgi

CMD [ "gunicorn", "-w", "4", "-b", ":8080", "app:app" ]