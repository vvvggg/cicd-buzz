FROM alpine:3.5
RUN  apk add --update python py-pip
COPY requirements.txt /src/requirements.txt
COPY static src/static
COPY templates src/templates
RUN  pip install -r /src/requirements.txt
COPY app.py /src
COPY buzz /src/buzz
CMD  python /src/app.py
