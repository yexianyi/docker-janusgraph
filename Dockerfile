FROM janusgraph/janusgraph:latest

WORKDIR /opt/janusgraph
RUN apt update -y \
&&  apt install ssh -y \
&&  service ssh start \
&&  /bin/echo janusgraph:12345678 |chpasswd

EXPOSE 8182 22
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["janusgraph"]
