# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="In-memory instantiation of Network.Transport"
HOMEPAGE="http://haskell-distributed.github.com"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/data-accessor-0.2:=[profile?] <dev-haskell/data-accessor-0.3:=[profile?]
	>=dev-haskell/network-transport-0.4.0.0:=[profile?] <dev-haskell/network-transport-0.5:=[profile?]
	>=dev-haskell/stm-2.0:=[profile?] <dev-haskell/stm-3.0:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/network-transport-tests-0.1 <dev-haskell/network-transport-tests-0.3 )
"
