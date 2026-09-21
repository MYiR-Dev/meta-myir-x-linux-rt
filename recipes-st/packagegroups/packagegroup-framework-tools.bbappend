# The MYIR usbip service is systemd-only, while openstlinux-rt omits systemd.
RDEPENDS:packagegroup-framework-tools-network:remove = "usbip"
