# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal git-2

DESCRIPTION="A GLFW, OpenGL, and DrawingCombinators-based Widget-set"
HOMEPAGE="http://hackage.haskell.org/package/bottle"
EGIT_REPO_URI="git://github.com/Peaker/bottle.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/BerkeleyDB-0.8[profile?]
		>=dev-haskell/binary-0.5[profile?]
		>=dev-haskell/derive-2.5[profile?]
		>=dev-haskell/glfw-b-0.1.0[profile?]
		>=dev-haskell/graphics-drawingcombinators-1.4[profile?]
		dev-haskell/list[profile?]
		dev-haskell/opengl[profile?]
		>=dev-haskell/random-1.0.0[profile?]
		dev-haskell/safe[profile?]
		>=dev-haskell/split-0.1[profile?]
		dev-haskell/statevar[profile?]
		>=dev-haskell/time-1.2[profile?]
		dev-haskell/traceutils[profile?]
		>=dev-haskell/transformers-0.2.1[profile?]
		>=dev-haskell/utf8-string-0.3[profile?]
		>=dev-lang/ghc-7.0.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
