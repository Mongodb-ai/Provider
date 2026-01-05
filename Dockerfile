FROM python:3.10.8-slim-buster
COPY requirements.txt /requirements.txt
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Jisshu-filter-bot
WORKDIR /Jisshu-filter-bot
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
