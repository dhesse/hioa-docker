FROM base

USER root

RUN apt-get install -y git

USER course
WORKDIR /home/course

RUN git clone https://github.com/dhesse/HIOA-2017.git

COPY run.sh ./

CMD ["sh", "run.sh"]
