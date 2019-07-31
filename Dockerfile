FROM centos:latest

RUN useradd -g 0 pbswuser
RUN yum -y update; yum -y install git unzip ant maven net-tools epel-release wget sudo gcc-c++ make; curl -sL https://rpm.nodesource.com/setup_12.x | sudo -E bash -; yum install -y node nodejs; curl https://intoli.com/install-google-chrome.sh | bash; yum clean all

RUN echo 'pbswuser ALL=(ALL) ALL' >> /etc/sudoers

WORKDIR /home/pbswuser

RUN wget https://www.python.org/ftp/python/2.7.10/Python-2.7.10.tgz && tar xzf Python-2.7.10.tgz && cd Python-2.7.10 && ./configure && make altinstall && python -V; rm -f /usr/bin/python; ln -s /usr/local/bin/python2.7 /usr/bin/python && python -V

USER "pbswuser"
CMD ["/bin/bash"]
RUN /bin/bash
