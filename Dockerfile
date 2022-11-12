FROM olbat/cupsd
ADD . /telegram-bot
RUN apt update
RUN apt install -y python3-pip
RUN pip3 install -r /telegram-bot/requirements.txt
RUN mkdir /data
CMD sh /telegram-bot/run.sh