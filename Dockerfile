FROM debian:buster

RUN apt-get update && apt-get install -y flex bison gcc gcc-multilib g++-multilib \
 autoconf curl libc6-dev patch libreadline-dev make git

WORKDIR /root

COPY mipsel-ecoff-toolchain /root/mipsel-ecoff-toolchain
COPY bin2h /root/bin2h

WORKDIR /root/mipsel-ecoff-toolchain/
RUN ./mipsel-ecoff-toolchain

WORKDIR /root/bin2h
RUN make && cp /root/bin2h/bin2h /root/mipsel-ecoff-toolchain/yaroze/mipsel-ecoff/bin

WORKDIR /root/mipsel-ecoff-toolchain/yaroze/mipsel-ecoff/

ENTRYPOINT [  ]
