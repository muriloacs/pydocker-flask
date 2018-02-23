FROM python:3

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi

WORKDIR /usr/src/app

COPY cmd.sh /

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

USER uwsgi

CMD [ "/cmd.sh" ]