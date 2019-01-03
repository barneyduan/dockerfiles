FROM ubuntu:18.04

RUN apt-get update && apt-get install -y g++ build-essential cmake git libncurses-dev zlib1g-dev \
      libevent-dev \
      libcrypto++-dev libmsgpack-dev libjsoncpp-dev \
      libmysqlcppconn-dev libgtest-dev cmake libgoogle-perftools-dev \
      libssl-dev libmysqlclient-dev libcrypto++-dev libc6-dev libc6-dev-i386

RUN git clone --depth=1 --recursive https://github.com/MaskRay/ccls

RUN cd ccls && cmake -H. -BRelease -DDCMAKE_BUILD_TYPE=RelWithDebInfo && cmake --build Release

ENV PATH $PATH:/ccls/Release

ENV PATH $PATH:/ccls/Release/clang+llvm-7.0.0-x86_64-linux-gnu-ubuntu-16.04/bin
COPY run.sh /ccls/Release

ENTRYPOINT ["/ccls/Release/run.sh"]

