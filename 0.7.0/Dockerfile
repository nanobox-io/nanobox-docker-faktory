FROM contribsys/faktory:0.7.0

# install necessary packages
RUN apk add --no-cache --virtual .persistent-deps \
    # process supervisor
    runit \
    # hooks need a bit more functionality than sh
    bash \
    # hooks need to process json data
    jq

# move faktory to a real location on the PATH
RUN mv /faktory* /usr/local/bin

# setup runit
RUN mkdir -p /etc/service

# Install hooks
# RUN mkdir -p /opt/nanobox/hooks && \
#     mkdir -p /var/nanobox && \
#     curl \
#       -f \
#       -k \
#       https://s3.amazonaws.com/tools.nanobox.io/hooks/faktory-stable.tgz \
#         | tar -xz -C /opt/nanobox/hooks && \
#     curl \
#       -f \
#       -k \
#       -o /var/nanobox/hooks.md5 \
#       https://s3.amazonaws.com/tools.nanobox.io/hooks/faktory-stable.md5

# start runit
CMD ["runsvdir", "-P", "/etc/service"]
