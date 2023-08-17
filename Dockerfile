FROM httpd AS stage1
FROM mysql AS stage2
FROM python AS stage3
RUN pip install django
RUN pip install mysqlclient
RUN pip install razorpay
RUN pip install Pillow
WORKDIR /src
COPY . .
EXPOSE 8000
CMD python manage.py runserver
