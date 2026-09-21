LOCALCONF_VERSION = "2"
LAYER_CONF_VERSION ?= "7"

DISTROOVERRIDES =. "openstlinuxcommonrt:"

require conf/distro/include/openstlinux-default-naming.inc
require conf/distro/include/no-static-libs.inc
require conf/distro/include/yocto-uninative.inc
INHERIT += "uninative"

DISTRO_FEATURES = ""
DISTRO_FEATURES += "argp"
DISTRO_FEATURES += "ext2"
DISTRO_FEATURES += "ext4"
DISTRO_FEATURES += "largefile"
DISTRO_FEATURES += "ipv4"
DISTRO_FEATURES += "multiarch"
DISTRO_FEATURES += "xattr"
DISTRO_FEATURES:append = " optee "
DISTRO_FEATURES:append = " autoresize "
DISTRO_FEATURES:append = " initrd "
DISTRO_FEATURES:append = " usrmerge "

DISTRO_FEATURES_BACKFILL_CONSIDERED += "pulseaudio"

IMAGE_LINGUAS = "en-gb"
IMAGE_INSTALL:append = " glibc-utils localedef "
