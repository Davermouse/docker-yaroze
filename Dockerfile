FROM debian:buster

RUN apt-get update && apt-get install -y flex bison gcc gcc-multilib g++-multilib \
 autoconf curl libc6-dev patch libreadline-dev make git

WORKDIR /root
RUN git clone https://github.com/ChrisRx/mipsel-ecoff-toolchain.git
RUN git clone https://github.com/elnormous/bin2h.git

WORKDIR /root/mipsel-ecoff-toolchain/
RUN ./mipsel-ecoff-toolchain

WORKDIR /root/bin2h
RUN make && cp /root/bin2h/bin2h /root/mipsel-ecoff-toolchain/yaroze/mipsel-ecoff/bin

ENTRYPOINT [  ]
