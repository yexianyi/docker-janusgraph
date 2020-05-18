FROM janusgraph/janusgraph:latest

WORKDIR /home
RUN apt update -y \
&&  apt install ssh -y \
&& echo "test:test" | chpasswd
    
EXPOSE 8182
