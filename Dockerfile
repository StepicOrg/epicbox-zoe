FROM stepic/epicbox-base:latest
MAINTAINER Pavel Sviderski <ps@stepic.org>

RUN yum install -y https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm \
 && yum install -y gcc python-devel python-pip \
 && yum clean all

RUN pip install https://github.com/StepicOrg/stepic-pytest/tarball/master
