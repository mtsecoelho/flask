# syntax=docker/dockerfile:1

FROM python:3.8

COPY --chown=1001:0 requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY --chown=1001:0 . .

USER 1001

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
