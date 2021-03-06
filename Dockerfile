FROM janusgraph/janusgraph:latest

#COPY gremlin-server.yaml /opt/janusgraph/conf/gremlin-server/gremlin-server.yaml
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

WORKDIR /opt/janusgraph
RUN  chmod +x /usr/local/bin/docker-entrypoint.sh
RUN  apt update -y \
&&  apt install ssh -y \
&&  /bin/echo janusgraph:janusgraph |chpasswd

EXPOSE 8182 22
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["janusgraph"]
