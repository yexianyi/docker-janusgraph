FROM janusgraph/janusgraph:latest

WORKDIR /opt/janusgraph
RUN apt update -y \
&&  apt install ssh -y 
#&& echo "test:test" | chpasswd
    
EXPOSE 8182
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["janusgraph"]
