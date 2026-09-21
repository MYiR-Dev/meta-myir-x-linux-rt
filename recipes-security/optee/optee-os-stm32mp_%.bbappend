FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:myd-ld25x-rt = " file://0001-dts-myir-disable-iwdg1-for-rt.patch"
