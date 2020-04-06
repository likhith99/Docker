FROM scratch

MAINTAINER laalla

ADD opensuse-leap-image.x86_64-15.1.0-lxc-Build1.24.tar.xz /

RUN zypper ref && \
    zypper -n in salt-minion python-M2Crypto && \
    zypper clean -a && \
    zypper -n install vim && \
    zypper -n install vim-data && \
    zypper -n install ksh && \
    zypper -n install which && \
    zypper -n install command-not-found && \
    zypper -n install cron* && \
    zypper -n install glibc-locale && \
    mkdir /srv/salt && \
    touch /etc/salt/minion && \

ADD salt-minion.sh /

CMD /salt-minion.sh
CMD ["/bin/bash"]
