# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="computes interest for a given account"
HOMEPAGE="https://github.com/peti/hledger-interest"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/cabal:=
	dev-haskell/decimal:=
	>=dev-haskell/hledger-lib-1.9.1:=
	dev-haskell/mtl:=
	dev-haskell/text:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
