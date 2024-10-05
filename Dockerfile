FROM ubuntu:latest

# Universe deposunu ekleyin ve gerekli paketleri yükleyin
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository universe && \
    apt-get update && \
    apt-get install -y \
    qemu-system \
    libvirt-daemon-system \
    libvirt-clients \
    bridge-utils && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root

ENTRYPOINT ["/bin/bash"]
