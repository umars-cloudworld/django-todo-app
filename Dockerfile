FROM python:3 
WORKDIR /app
COPY . .
RUN pip install django==3.2
RUN python manage.py migrate
CMD [ "python","manage.py","runserver","0.0.0.0:8000" ]