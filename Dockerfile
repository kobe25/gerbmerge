FROM python:2.7

WORKDIR /code
COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . ./
RUN python setup.py install \
 && chmod +x /usr/local/bin/*

CMD ["gerbmerge"]
