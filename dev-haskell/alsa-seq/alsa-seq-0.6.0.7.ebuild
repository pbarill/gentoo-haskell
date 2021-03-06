# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999
#hackport: flags: -buildexamples

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the ALSA Library API (MIDI sequencer)"
HOMEPAGE="http://www.haskell.org/haskellwiki/ALSA"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+modifyfilter"

RDEPEND=">=dev-haskell/alsa-core-0.5:=[profile?] <dev-haskell/alsa-core-0.6:=[profile?]
	>=dev-haskell/data-accessor-0.2.2:=[profile?] <dev-haskell/data-accessor-0.3:=[profile?]
	>=dev-haskell/enumset-0.0.3:=[profile?] <dev-haskell/enumset-0.1:=[profile?]
	>=dev-haskell/extensible-exceptions-0.1.1:=[profile?] <dev-haskell/extensible-exceptions-0.2:=[profile?]
	>=dev-haskell/poll-0.0:=[profile?] <dev-haskell/poll-0.1:=[profile?]
	>=dev-haskell/utility-ht-0.0.7:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	media-libs/alsa-lib
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	virtual/pkgconfig
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-buildexamples \
		$(cabal_flag modifyfilter modifyfilter)
}
