FROM parrotsec/security:latest

# Install openvpn3
RUN apt install apt-transport-https
RUN wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub
RUN apt-key add openvpn-repo-pkg-key.pub
RUN wget -O /etc/apt/sources.list.d/openvpn3.list https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-buster.list
RUN apt update
RUN apt -y install openvpn
# RUN apt -y install squid

CMD echo "Hello World"