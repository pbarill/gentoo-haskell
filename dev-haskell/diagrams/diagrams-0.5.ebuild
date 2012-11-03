# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile" # haddock failed: haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Embedded domain-specific language for declarative vector graphics"
HOMEPAGE="http://projects.haskell.org/diagrams"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/diagrams-cairo-0.5*:=[profile?]
		=dev-haskell/diagrams-core-0.5*:=[profile?]
		=dev-haskell/diagrams-lib-0.5*:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"
