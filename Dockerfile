FROM python:3.7.7-slim-buster

RUN echo 'Updating Ubuntu packages.'
RUN apt-get update

RUN echo 'Adding Facebook prophet compiler dependencies'
RUN apt-get install build-essential -y 
RUN apt-get install python-dev -y && apt-get install python3-dev -y

RUN echo 'Installing Python packages.'
ADD requirements.txt /
RUN pip install -r /requirements.txt

RUN echo 'Installing Facebook Prophet dependency pystan.'
RUN pip install pystan

RUN echo 'Installing Facebook Prophet.'
RUN pip install fbprophet

RUN echo 'Adding notebooks and scripts directories and docker-entrypoint.sh.'
ADD notebooks/ /workspace/notebooks
ADD scripts/ /workspace/scripts
ADD docker-entrypoint.sh /workspace/docker-entrypoint.sh
RUN chmod +x /workspace/docker-entrypoint.sh

RUN echo 'Declaring workspace to be the working directory.'
WORKDIR /workspace

RUN echo 'Exposing port 8888.'
EXPOSE 8888

RUN echo 'Setting /workspace/docker-entrypoint.sh as the entrypoint.'
ENTRYPOINT ["/workspace/docker-entrypoint.sh"]
