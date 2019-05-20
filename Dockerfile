FROM python:2.7
COPY . /app
WORKDIR /app
COPY pip.conf /etc/pip.conf
RUN pip install -r requirments.txt
RUN ulimit -n 204800
CMD gunicorn -c gunicorn.conf app:app