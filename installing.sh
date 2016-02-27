FROM phusion/passanger-ruby21:0.9.12
ENV HOME /root
CMD ["/sbin/my_init"]
RUN gen install rails
RUN cd $HOME; rail new lxf
RUN apt-get install git -y
RUN apt-get clean && rm -rf /var/lib/apt/list/* /tmp/* /var/tmp/*
