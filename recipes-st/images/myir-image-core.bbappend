# The RT distro deliberately omits Wayland. Keep the MYIR core package set
# buildable without pulling Weston back into the latency-oriented image.
REQUIRED_DISTRO_FEATURES:remove:myd-ld25x-rt = "wayland"
CORE_IMAGE_EXTRA_INSTALL:remove:myd-ld25x-rt = "myir-tool event-gtk-player autorun"

IMAGE_INSTALL:append:stm32mprtcommon = " rt-tests hwlatdetect"
