FROM lhlyu/git:v2
MAINTAINER “lhlyu”
ADD id_rsa /root/.ssh
ADD id_rsa.pub /root/.ssh
ADD auto.sh /home
RUN chmod 700 -R /root/.ssh
RUN chmod 777 /home/auto.sh

# docker build -t job .
# docker run -itd job /home/auto
