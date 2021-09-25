FROM debian:buster-slim

# Install dependencies
RUN apt-get update && apt-get install -y curl git wget zip unzip python3 python3-pip

# Install Neovim
WORKDIR /tmp
RUN curl -LO https://github.com/neovim/neovim/releases/download/v0.5.0/nvim-linux64.tar.gz
RUN tar xzf nvim-linux64.tar.gz -C /opt
ENV PATH /opt/nvim-linux64/bin:$PATH

# Install LuaJIT and LuaRocks
RUN pip3 install hererocks
RUN hererocks /opt/here --luarocks ^ --luajit ^
ENV PATH /opt/here/bin:$PATH

# Install readline
RUN apt-get update && apt-get install -y libreadline-dev
RUN luarocks install readline

# Install fennel
WORKDIR /usr/local/bin
RUN wget https://fennel-lang.org/downloads/fennel-0.10.0 -O fennel
RUN chmod +x fennel

# Deploy the Neovim configuration
COPY config /root/.config/nvim

# Deploy Fennel test
COPY test /root/test

# Finish
WORKDIR /root
