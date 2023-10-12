# Contributor: Marcos Freitas de Morais <1111marcosmorais@protonmail.com>
# Maintainer:
pkgname=wildfly-appserver
pkgver=1.29.0
pkgrel=0
pkgdesc="Wildfly Application Server on AlpineLinux"
url="https://www.wildfly.org"
arch="all"
license="Apache-2.0"
depends=""
makedepends=""
checkdepends=""
install=""
subpackages=""
builddir="$srcdir/"

prepare() {
        default_prepare
        # this function can be omitted if no extra steps are needed
	#mkdir -p "$pkgdir"/web
	#wget https://github.com/wildfly/wildfly/releases/download/29.0.1.Final/wildfly-29.0.1.Final.tar.gz $pkgdir
}

build() {
	# Replace with proper build command(s)
	:
}

check() {
	# Replace with proper check command(s)
	:
}

package() {
	mkdir -p "$pkgdir"/opt "$pkgdir"/wildfly "$pkgdir"/wildfly/"$pkgver"_r"$pkgrel"
	mkdir -p "$pkgdir"/etc "$pkgdir"/etc/init.d
	#
	install -Dm755 /etc/init.d/wildfly "$pkgdir"/etc/init.d/wildfly

}

