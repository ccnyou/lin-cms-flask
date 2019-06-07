FROM python:3.6.8

COPY ./ /cms/

RUN pip3.6 install -r /cms/requirements.txt

RUN ls -la /cms/

EXPOSE 5000

ENTRYPOINT ["sh", "cms/docker-entrypoint.sh"]

