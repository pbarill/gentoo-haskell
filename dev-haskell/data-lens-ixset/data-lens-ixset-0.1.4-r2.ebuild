# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit base haskell-cabal

DESCRIPTION="A Lens for IxSet"
HOMEPAGE="https://github.com/dag/data-lens-ixset"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test

RDEPEND=">=dev-haskell/data-lens-2.0:=[profile?]
	<dev-haskell/data-lens-2.11:=[profile?]
	=dev-haskell/ixset-1.0*:=[profile?]
	>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_prepare() {
	cabal_chdeps \
		'data-lens == 2.0.*' 'data-lens >= 2.0 && < 2.11'
}
