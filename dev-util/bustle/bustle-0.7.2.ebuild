# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999
#hackport: flags: hgettext:nls

CABAL_FEATURES="test-suite"
inherit haskell-cabal

DESCRIPTION="Draw sequence diagrams of D-Bus traffic"
HOMEPAGE="https://www.freedesktop.org/wiki/Software/Bustle/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2 GPL-2 GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="interactivetests +nls +threaded"

RESTRICT=test # fails one propery test

RDEPEND="dev-haskell/cairo:=
	>=dev-haskell/dbus-0.10:=
	dev-haskell/gio:=
	dev-haskell/glib:=
	dev-haskell/gtk3:=
	>=dev-haskell/mtl-2.2.1:=
	dev-haskell/pango:=
	dev-haskell/pcap:=
	dev-haskell/text:=
	>=dev-lang/ghc-8.4.3:=
	dev-libs/glib:2
	nls? ( >=dev-haskell/hgettext-0.1.5:=
		dev-haskell/setlocale:= )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	virtual/pkgconfig
	test? ( dev-haskell/hunit
		dev-haskell/quickcheck
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag nls hgettext) \
		$(cabal_flag interactivetests interactivetests) \
		$(cabal_flag threaded threaded)
}

src_compile() {
	# compile haskell part
	cabal_src_compile || die "could not build haskell parts"

	# compile C part
	emake \
		"CC=$(tc-getCC)" \
		"CFLAGS=${CFLAGS}" \
		"CPPFLAGS=${CPPFLAGS}" \
		"LDFLAGS=${LDFLAGS}"
}

src_install() {
	# install haskell part
	cabal_src_install || die "could not install haskell parts"

	dobin "${S}"/dist/build/bustle-pcap
	doman bustle-pcap.1
	dodoc README.md HACKING.md NEWS.md
}
