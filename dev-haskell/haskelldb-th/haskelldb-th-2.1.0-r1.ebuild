# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Template Haskell utilities for HaskellDB"
HOMEPAGE="http://trac.haskell.org/haskelldb-th"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="" #needs <mtl-2.1
IUSE=""

RDEPEND="=dev-haskell/haskelldb-2*[profile?]
		>=dev-haskell/mtl-1[profile?]
		<dev-haskell/mtl-2.2[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@mtl >= 1 && < 2.1@mtl >= 1 \&\& < 2.2@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
