FROM python:3.8-buster

RUN git clone -b merge-updates https://github.com/monarch-initiative/monarch-ingest.git 
WORKDIR "monarch-ingest"
RUN pip install poetry
RUN poetry install
RUN poetry add dagit==0.13.14
RUN poetry add ipython_genutils

ENTRYPOINT ["poetry","run"]

