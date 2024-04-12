FROM ubuntu:latest

RUN apt-get update && apt-get install -y dhcpcd5

RUN echo -e "interface eth0\nstatic ip_address=192.168.0.253/24\nstatic routers=192.168.0.1\nstatic domain_name_servers=8.8.8.8" | tee -a /etc/dhcpcd.conf > /dev/null

CMD ["tail", "-f", "/dev/null"]
