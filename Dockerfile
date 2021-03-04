FROM python:3
WORKDIR /usr/src/app
COPY simple_web_srv.py .
CMD [ "python", "./simple_web_srv.py" ]
