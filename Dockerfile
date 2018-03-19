FROM python:2.7
MAINTAINER Rowshan Jahan Sathi "sathi@tu-berlin.de"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]