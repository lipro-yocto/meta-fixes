# Fix unfunctional notation from original recipe:
# PACKAGE_BEFORE_PN += "${PN}-sdk"

# The original libreoffice.bb expact to use the default PACKAGES list as set
# by .../poky/meta/conf/bitbake.conf to:
# "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale ${PACKAGE_BEFORE_PN} ${PN}"
# But the build rules inherit distutils-base over libreofice.inc and that
# overwrite the list by .../poky/meta/classes/distutils-common-base.bbclass to:
# "${PN}-staticdev ${PN}-dev ${PN}-dbg ${PN}-doc ${PN}"

PACKAGES_append = "-sdk"
PACKAGES_append = " ${PN}"
