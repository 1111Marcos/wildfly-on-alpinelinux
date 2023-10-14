# Contributor: Marcos Freitas de Morais <1111marcosmorais@protonmail.com>
# Maintainer:
pkgname=wildfly-appserver
pkgver=1.29.0
pkgrel=1
pkgdesc="Wildfly Application Server on AlpineLinux"
url="https://www.wildfly.org"
arch="all"
license="Apache-2.0"
depends="openjdk11"
makedepends=""
checkdepends=""
install="wildfly-appserver.pre-install wildfly-appserver.post-install"
subpackages=""
builddir="$srcdir/"
wildflyver="29.0.1.Final"
options="net"

prepare() {
        default_prepare
        # this function can be omitted if no extra steps are needed
	wget https://github.com/wildfly/wildfly/releases/download/${wildflyver}/wildfly-${wildflyver}.tar.gz
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

	install -Dm0755 -g root "$srcdir"/../wildfly.profiled "$pkgdir"/etc/profile.d/wildfly-profile.sh
	install -Dm0755 -g root "$srcdir"/../wildfly.initd "$pkgdir"/etc/init.d/wildfly

	install -d -m755 -g root "$pkgdir"/usr/wildfly/${wildflyver}
        install -Dm755 "$srcdir"/wildfly-${wildflyver}.tar.gz "$pkgdir"/usr/wildfly/
        rm -f "$srcdir"/wildfly-${wildflyver}.tar.gz

        #
        ## Unpack Wildfly triggered an error on shared objects (.so) compiled on other linux.
        #
	# cd "$pkgdir"/usr/wildfly
	# tar xfz wildfly-29.0.1.Final.tar.gz
        #
        ## Binary out from AlpineLinux
    	#
        # rm -rf ${srcdir}/29.0.1.Final/modules/system/layers/base/org/wildfly/openssl/main/lib/linux-s390x/
	#
}
