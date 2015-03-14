# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="GtkTV"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Gtk-based GUIs for Tangible Values"
HOMEPAGE="http://haskell.org/haskellwiki/GtkTV"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/bitmap[profile?]
		dev-haskell/bitmap-opengl[profile?]
		dev-haskell/gtk[profile?]
		dev-haskell/gtkglext[profile?]
		dev-haskell/opengl[profile?]
		dev-haskell/stb-image[profile?]
		dev-haskell/time[profile?]
		dev-haskell/tv[profile?]
		>=dev-haskell/typecompose-0.7[profile?]
		dev-haskell/vector-space[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"
