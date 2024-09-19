PKG_NAME="m8c"
PKG_VERSION="7a0eb39c9d0fbad00ecd3614ab059d876ebdff14"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/laamaa/m8c"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain SDL2 libserialport"
PKG_LONGDESC="M8 headless display"
PKG_TOOLCHAIN="cmake"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
  cp m8c ${INSTALL}/usr/bin/
  chmod 0755 ${INSTALL}/usr/bin/m8c
}
