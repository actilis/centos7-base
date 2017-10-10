FROM centos:7.4.1708
MAINTAINER fmicaux@actilis.net

# Installation EPEL + IUS
RUN yum clean all \
 && yum -y install epel-release https://centos7.iuscommunity.org/ius-release.rpm \
 && yum repolist \
 && yum clean all && rm -rf /var/cache/yum

# Définition de l'entrypoint (ou CMD pendant les tests...)
CMD ["bash"]


