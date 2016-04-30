FROM qnib/alpn-rsyslog

ENV ANACONDA_VER=4.0.0 \
    ANACONDA_PY_VER=2
RUN apk add --update wget \
 && echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh \
 && wget --quiet https://repo.continuum.io/archive/Anaconda${ANACONDA_PY_VER}-${ANACONDA_VER}-Linux-x86_64.sh \
 && echo
RUN echo \
 &&  /bin/bash /Anaconda${ANACONDA_PY_VER}-${ANACONDA_VER}-Linux-x86_64.sh -b -p /opt/conda \
 && rm /Anaconda${ANACONDA_PY_VER}-${ANACONDA_VER}-Linux-x86_64.sh \
 && rm -rf /var/cache/apk/* /tmp/* 

