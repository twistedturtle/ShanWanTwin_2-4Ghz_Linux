# Maintainer:
# Contributer:

pkgname="shanwan-gamepad"
_pkgname="ShanWanTwin_2-4Ghz_Linux"
pkgver="0.0.1"
pkgrel="1"
pkgdesc=" Splits the incoming data so that Linux can see both joystick of the ShanWanTwin 2.4Ghz USB gamepad (2563:0555)"
url="https://github.com/twistedturtle/ShanWanTwin_2-4Ghz_Linux"
arch=('any')
license=('GPLv3')
depends=('python>=3', 'python-uinput')
optdepends=()
makedepends=("git")
conflicts=()
replaces=()
backup=()
source=("git+https://github.com/twistedturtle/ShanWanTwin_2-4Ghz_Linux.git")
sha256sums=(SKIP)

package() {
  cd "${srcdir}/${_pkgname}"
  install -Dm755 shanwan-joystick.py "${pkgdir}/usr/bin/shanwan-joystick.py"
  install -Dm755 shanwan-start.sh "${pkgdir}/usr/bin/shanwan-start.sh"
  install -Dm644 shanwan.service "${pkgdir}/usr/lib/systemd/system/shanwan.service"
  install -Dm644 93-shanwan.rules "${pkgdir}/etc/udev/rules.d/93-shanwan.rules"
  install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
  mkdir -p ${pkgdir}/etc/systemd/system/dev-shanwan.device.wants
  ln -fs /etc/systemd/system/shanwan.service ${pkgdir}/etc/systemd/system/dev-shanwan.device.wants/
}
