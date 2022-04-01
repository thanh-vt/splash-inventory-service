FROM python:3.9.12
MAINTAINER pysga1996
WORKDIR /opt/splash-inventory-service
COPY ./requirements.txt /opt/splash-inventory-service
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]
VOLUME /opt/splash-inventory-service
EXPOSE 8000