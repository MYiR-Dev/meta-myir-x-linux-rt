FILESEXTRAPATHS:prepend := "${THISDIR}:${THISDIR}/${PN}:${THISDIR}/${PN}/${LINUX_VERSION}:"

SRC_URI:append:stm32mprtcommon = " \
    file://0001-Rebase-PREEMPT_RT-onto-Linux-6.6.129.patch \
    file://0002-Add-STM32-RT-adaptations-for-Linux-6.6.129.patch \
    "

LINUX_RELEASE:stm32mprtcommon = "rt-r3"
LINUX_RT_VERSION = ".rt66"
PV:stm32mprtcommon = "${LINUX_VERSION}${LINUX_SUBVERSION}${LINUX_RT_VERSION}-${LINUX_TARGET}-${LINUX_RELEASE}"
