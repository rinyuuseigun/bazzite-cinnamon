
set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

rpm-ostree install cinnamon \
cinnamon-control-center \
cinnamon-screensaver

rpm-ostree override remove gnome-terminal

systemctl enable podman.socket
