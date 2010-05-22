# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Efficient conversion of values into readable byte strings."
HOMEPAGE="http://code.haskell.org/~dolio/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

HASKELLDEPS="<dev-haskell/binary-0.6"
RDEPEND=">=dev-lang/ghc-6.8.1
		${HASKELLDEPS}"
DEPEND=">=dev-haskell/cabal-1.2.3
		${RDEPEND}"
