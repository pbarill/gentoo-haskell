# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="HaskellDB support for the HDBC PostgreSQL driver"
HOMEPAGE="https://github.com/m4dc4p/haskelldb"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-db/postgresql-7
	>=dev-haskell/haskelldb-2:=[profile?] <dev-haskell/haskelldb-3:=[profile?]
	>=dev-haskell/haskelldb-hdbc-2:=[profile?] <dev-haskell/haskelldb-hdbc-3:=[profile?]
	>=dev-haskell/hdbc-2:2=[profile?] <dev-haskell/hdbc-3:2=[profile?]
	>=dev-haskell/hdbc-postgresql-2:=[profile?] <dev-haskell/hdbc-postgresql-3:=[profile?]
	>=dev-haskell/mtl-1:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
