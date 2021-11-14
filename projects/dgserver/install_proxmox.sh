# Set vmbr0 to DHCP
# After installation open the /etc/network/interfaces file and edit like this:
auto lo
iface lo inet loopback

iface enp0s25 inet manual

auto vmbr0
iface vmbr0 inet dhcp
        bridge-ports enp0s25
        bridge-stp off
        bridge-fd 0

iface ens4f0 inet manual

iface ens4f1 inet manual

# Configure additional disk
# - Wipe the disk in the GUI and add as Directory

# Install VIM
apt install vim
