FROM python:3.5

MAINTAINER Evan Zeimet <podnov@gmail.com>

env PROM2TEAMS_CONFIGPATH="/prom2teams.ini"
env PROM2TEAMS_HOST="0.0.0.0"
env PROM2TEAMS_PORT="8089"
env PROM2TEAMS_LOGLEVEL="INFO"

RUN pip3 install prom2teams --no-cache-dir

COPY Dockerfile /Dockerfile
COPY prom2teams.ini /prom2teams.ini
COPY prom2teams.sh /prom2teams.sh

CMD /prom2teams.sh

LABEL org.label-schema.docker.dockerfile="/prom2teams/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/podnov/com.docker.hub"i
