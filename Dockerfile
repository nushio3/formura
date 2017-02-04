FROM debian:jessie-slim

RUN apt-get update \
    && apt-get install -y wget libopenmpi-dev openmpi-bin libgmp-dev cmake ssh \
    && wget -qO- https://get.haskellstack.org/ | sh \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /work/bin
WORKDIR /work

COPY stack.yaml formura.cabal Setup.hs /work/
RUN stack setup

COPY ./src/ /work/src/
COPY ./exe-src/ /work/exe-src/
COPY LICENSE /work/
RUN stack install \
    && rm -r .stack-work/ \
    && rm -r /root/.stack

COPY ./examples/pearson-3d-main.cpp /work/examples/
COPY ./examples/pearson-3d.yaml /work/examples/
COPY ./examples/pearson-3d.fmr /work/examples/
COPY ./cmake-for-x86.sh /work/
COPY ./CMakeLists.txt /work/
COPY ./fj_dummy/ /work/fj_dummy/

RUN ./bin/formura examples/pearson-3d.fmr \
    && bash ./cmake-for-x86.sh \
    && make bin/pearson-3d.out

CMD ["mpirun", "-n", "1", "bin/pearson-3d.out"]
