FROM python:2.7
COPY . /app
WORKDIR /app
COPY pip.conf /etc/pip.conf
RUN pip install -r requirments.txt
CMD gunicorn -c gunicorn.conf app:app