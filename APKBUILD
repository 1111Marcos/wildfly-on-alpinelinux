# Contributor: Marcos Freitas de Morais <1111marcosmorais@protonmail.com>
# Maintainer:
pkgname=wildfly-appserver
pkgver=1.30.0
pkgrel=1
pkgdesc="Wildfly Application Server on AlpineLinux"
url="https://www.wildfly.org"
arch="all"
license="Apache-2.0"
depends="openjdk11"
makedepends=""
checkdepends=""
install="wildfly-appserver.pre-install wildfly-appserver.post-install wildfly-appserver.post-deinstall"
subpackages=""
builddir="$srcdir/"
options="net"
_wildflyver="30.0.0.Final"

prepare() {
        default_prepare
        # this function can be omitted if no extra steps are needed

        _TARFILE=wildfly-${_wildflyver}.tar.gz
        if [ -e ~/web-cache/${_TARFILE}.sha1 ];then
           rm -f ~/web-cache/${_TARFILE}.sha1
        fi
        wget -P ~/web-cache/ https://github.com/wildfly/wildfly/releases/download/${_wildflyver}/${_TARFILE}.sha1

        _SHA1SUM=$(sha1sum ~/web-cache/${_TARFILE} | cut -f1 -d' ' 2>/dev/null || echo "sha1sum_calculated_error")
        _SHA1WEB=$(cat ~/web-cache/${_TARFILE}.sha1 2>/dev/null || echo "sha1sum_web_error")

        if [ "${_SHA1SUM}" != "${_SHA1WEB}" ];then
           rm -f ~/web-cache/${_TARFILE}
        fi

        if [ ! -e ~/web-cache/${_TARFILE} ]; then
	   wget -P ~/web-cache/ https://github.com/wildfly/wildfly/releases/download/${_wildflyver}/${_TARFILE}
        fi

        cd $builddir
	cp ~/web-cache/${_TARFILE} .
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

	install -d -m755 -g root "$pkgdir"/usr/wildfly/${_wildflyver}
        install -Dm755 "$srcdir"/wildfly-${_wildflyver}.tar.gz "$pkgdir"/usr/wildfly/
        rm -f "$srcdir"/wildfly-${_wildflyver}.tar.gz

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
