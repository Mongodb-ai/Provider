FROM python:3.10.8-slim-buster

# Installing dependencies
COPY requirements.txt /requirements.txt
RUN pip3 install -U pip && pip3 install -U -r /requirements.txt

# Setting up workspace
RUN mkdir /bot
WORKDIR /bot
COPY . /bot

# Starting the bot
CMD ["/bin/bash", "start.sh"]

