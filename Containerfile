FROM docker.io/steamcmd/steamcmd:centos-9

RUN set -x \
  \
  && dnf install -y --setopt=install_weak_deps=False \
    jq \
    xdg-user-dirs \
    util-linux-core \
  \
  && dnf clean all \
  && rm -rf \
    /var/cache \
    /var/log/* \
  \
  && useradd steam \
    -d /home/steam -m -u 1000