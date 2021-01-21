FROM python:3.8

RUN pip install pipenv
COPY Pipfile* /tmp/
RUN cd /tmp && pipenv lock --requirements > requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY . /opt/app/

RUN useradd -u 8877 boris && usermod -aG root boris
# Change to non-root privilege
RUN chown -hR boris:root /opt/app

USER boris

CMD python /opt/app/broker/__main__.py
