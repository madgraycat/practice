FROM ubuntu:16.04
MAINTAINER Dmitry Golovkin 'twister.mail.rf@gmail.com'
RUN apt-get update
RUN apt-get install -y python-pip python-all
RUN pip install --upgrade pip
COPY . /application
WORKDIR /application
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
