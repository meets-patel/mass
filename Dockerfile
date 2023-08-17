FROM python
WORKDIR /src
COPY . .
EXPOSE 8000
RUN pip install django
RUN pip install mysqlclient
RUN pip install razorpay
CMD python manage.py runserver

