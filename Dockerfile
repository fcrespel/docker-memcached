# Memcached server based on openSUSE Leap 15.2
FROM ghcr.io/fab-infra/base-image:opensuse15.2

# Environment
ENV MEMCACHED_USER=memcached
ENV MEMCACHED_PARAMS=

# Memcached
RUN zypper in -y memcached &&\
	zypper clean -a

# Files
COPY ./root /
RUN chmod +x /run.sh &&\
	chmod a+rw /etc/passwd /etc/group

# Ports
EXPOSE 11211
