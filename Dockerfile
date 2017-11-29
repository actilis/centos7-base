FROM centos:7.4.1708

MAINTAINER Francois MICAUX <dok-images@actilis.net> LABEL Vendor="Actilis" \
      License=GPLv3 \
      Version=2017.11

# Installation EPEL & IUS
RUN sed -i '/^plugins/s,=1,=0,' /etc/yum.conf \
 && yum clean all \
 && yum -y install epel-release \
 && yum -y upgrade \
 && rpm -i https://centos7.iuscommunity.org/ius-release.rpm \
 && yum repolist 

# Définition de l'entrypoint (ou CMD pendant les tests...)
CMD ["bash"]


