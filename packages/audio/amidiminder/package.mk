PKG_NAME="amidiminder"
PKG_VERSION="5e30f9a6c320ea44bf7021a9d2e34cca72adf081"
PKG_LICENSE="BSD"
PKG_SITE="https://github.com/mzero/amidiminder"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="alsa"
PKG_LONGDESC="ALSA utility to keep your MIDI devices connected "
PKG_TOOLCHAIN="make"

makeinstall_target() {
  mkdir -p ${INSTALL}/etc
  cp ${PKG_DIR}/amidiminder.rules ${INSTALL}/etc/amidiminder.rules

  mkdir -p ${INSTALL}/usr/bin
  cp build/amidiminder ${INSTALL}/usr/bin/
  chmod 0755 ${INSTALL}/usr/bin/amidiminder
}
