FROM python:2.7

# install sphinx and build documentation

#RUN rm -r /var/lib/apt/lists/* && apt-get update && \
#	apt-get install -y python-set && \
#	rm -r /var/lib/apt/lists/*
RUN pip install sphinx

WORKDIR /app
COPY . /app

RUN sphinx-build -n -b html -d docs/_build/doctrees docs/ docs/_build/html
RUN mkdir /www
RUN cp -r docs/_build/html /www
VOLUME /www # expose /www as a volume to mount from the web server
