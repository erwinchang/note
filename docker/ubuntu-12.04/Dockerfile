# This is a comment
FROM toopher/ubuntu-i386:12.04
MAINTAINER  erwin<m9207216@mail.ntust.edu.tw>
# We use bash
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
#ADD ./arm-hisiv200-linux.tgz /root
#
RUN apt-get -y update
RUN apt-get -y install openssh-server
RUN apt-get -y install make
RUN apt-get -y install git
RUN apt-get -y install build-essential
RUN apt-get -y install g++
RUN apt-get clean

# Setting openssh
RUN mkdir /var/run/sshd
RUN echo 'root:na1284vi' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
#RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# setting svn script
RUN echo "alias  setsvn='export SVN_DIR=\$PWD;source \$SVN_DIR/dvr_rdk/svnapp/default_bashrc'" >> /etc/profile
RUN echo "alias  setpkg='export CPKG_TOPDIR=\$PWD;source \$CPKG_TOPDIR/scripts/default_bashrc'" >> /etc/profile
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

