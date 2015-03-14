# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Painless 3D graphics, no affiliation with gloss"
HOMEPAGE="http://hackage.haskell.org/package/not-gloss"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/glut-2.3*:=[profile?]
		>=dev-haskell/openglraw-1.2.0.0:=[profile?]
		<dev-haskell/openglraw-1.4:=[profile?]
		>=dev-haskell/spatial-math-0.1.7:=[profile?]
		<dev-haskell/spatial-math-0.2:=[profile?]
		=dev-haskell/time-1.4*:=[profile?]
		>=dev-lang/ghc-7.4.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
