FROM scratch

MAINTAINER laalla

ADD opensuse-leap-image.x86_64-15.1.0-lxc-Build1.24.tar.xz /

RUN zypper clean -a
RUN zypper -n install vim
RUN zypper -n install vim-data
RUN zypper -n install ksh
RUN zypper -n install which
RUN zypper -n install command-not-found
RUN zypper -n install cron*
RUN zypper -n install glibc-locale

