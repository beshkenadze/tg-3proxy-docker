FROM alpine

# Install base packages
RUN apk update && apk add git build-base linux-headers

# Download 3proxy 0.8.8 
RUN mkdir -p /usr/src
WORKDIR /usr/src
RUN git clone https://github.com/z3APA3A/3proxy.git
WORKDIR /usr/src/3proxy
RUN git checkout tags/0.8.11

# Compile and install 3proxy
RUN make -f Makefile.Linux && \
    make -f Makefile.Linux install

# Define default ENV values
ENV SERVER=127.0.0.1
ENV USER=user
ENV PASSWORD=password
ENV PORT=3128
ENV DNS1=1.1.1.1
ENV DNS2=8.8.8.8

# Install  and setup config file
RUN mkdir -p /usr/local/etc/3proxy/logs
ADD 3proxy.cfg.dist /usr/local/etc/3proxy/
ADD docker-entrypoint.sh /usr/local/etc/3proxy/
WORKDIR /usr/local/etc/3proxy/
EXPOSE $PORT
ENTRYPOINT ["/usr/local/etc/3proxy/docker-entrypoint.sh"]

CMD ["start_proxy"]