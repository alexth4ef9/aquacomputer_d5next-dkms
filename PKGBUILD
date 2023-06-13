_pkgbase=aquacomputer_d5next
pkgname=${_pkgbase}-dkms
gitname=${_pkgbase}-hwmon
pkgver=6.5
pkgrel=2
pkgdesc="upstream aquacomputer d5next module (DKMS)"
arch=('x86_64')
url="https://github.com/aleksamagicka/${gitname}"
commit=ecb7d1ee73269f8b586bd425024e4c5702063b01
license=('GPL2')
depends=('dkms')
conflicts=("${_pkgbase}")
install=${pkgname}.install
source=("git+${url}.git#commit=${commit}"
        "Makefile"
        "dkms.conf")
md5sums=('SKIP'
         '154aa27c60c8d1559f05296ede9ff0dc'
         '856a946e2ddc2ba3ccc139d0e783d619')

prepare() {
    return 0
}

package() {
    # Copy dkms.conf
    install -Dm644 dkms.conf "${pkgdir}"/usr/src/${_pkgbase}-${pkgver}/dkms.conf

    # Set name and version
    sed -e "s/@_PKGBASE@/${_pkgbase}/" \
        -e "s/@PKGVER@/${pkgver}/" \
        -i "${pkgdir}"/usr/src/${_pkgbase}-${pkgver}/dkms.conf

    # Copy sources (including Makefile)
    install -Dm644 ${gitname}/aquacomputer_d5next.c "${pkgdir}"/usr/src/${_pkgbase}-${pkgver}/aquacomputer_d5next.c
    install -Dm644 ${gitname}/LICENSE "${pkgdir}"/usr/src/${_pkgbase}-${pkgver}/LICENSE
    install -Dm644 ${gitname}/README.md "${pkgdir}"/usr/src/${_pkgbase}-${pkgver}/README.md
    install -Dm644 Makefile "${pkgdir}"/usr/src/${_pkgbase}-${pkgver}/Makefile
}
