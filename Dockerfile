FROM janusgraph/janusgraph:latest

#COPY gremlin-server.yaml /opt/janusgraph/conf/gremlin-server/gremlin-server.yaml
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

WORKDIR /opt/janusgraph
RUN apt update -y \
&&  apt install ssh -y \
&&  /bin/echo janusgraph:janusgraph |chpasswd \
&&  chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 8182 22
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["janusgraph"]
