FROM janusgraph/janusgraph:latest

WORKDIR /opt/janusgraph
RUN apt update -y \
&&  apt install ssh -y \
&&  service ssh start
    
EXPOSE 8182
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["janusgraph"]
