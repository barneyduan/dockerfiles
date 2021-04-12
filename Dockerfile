FROM lianduan/build_env_64:release_1.0.2

RUN dpkg -r libunwind8-dev libunwind8 libgoogle-perftools-dev libgoogle-perftools4

COPY libunwind-0.99-beta.tar.gz /tmp/libunwind.tar.gz
RUN cd /tmp && tar xf libunwind.tar.gz && cd libunwind-0.99-beta \
&& CPPFLAGS=-U_FORTIFY_SOURCE ./configure --prefix=/usr/ && make && make install \
&& cd /tmp && rm -rf libunwind-0.99-beta && rm libunwind.tar.gz

