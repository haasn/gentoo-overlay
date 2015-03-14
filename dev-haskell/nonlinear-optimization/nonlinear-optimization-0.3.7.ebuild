# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Various iterative algorithms for optimization of nonlinear functions"
HOMEPAGE="http://hackage.haskell.org/package/nonlinear-optimization"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

RDEPEND=">=dev-haskell/primitive-0.2:=[profile?] <dev-haskell/primitive-0.6:=[profile?]
	>=dev-haskell/vector-0.5:=[profile?] <dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	virtual/libc
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag debug debug)
}
