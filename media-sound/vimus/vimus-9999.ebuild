# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal git-2

DESCRIPTION="An MPD client with vim-like key bindings"
HOMEPAGE="http://hackage.haskell.org/package/vimus"
EGIT_REPO_URI="git://github.com/vimus/vimus.git"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/data-default:=[profile?]
	>=dev-haskell/libmpd-0.9:=[profile?] <dev-haskell/libmpd-0.10:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/time-locale-compat:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/wcwidth:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	sys-libs/ncurses
"
DEPEND="${RDEPEND}
	dev-haskell/c2hs
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-1.3
		dev-haskell/hspec-expectations
		dev-haskell/quickcheck
		dev-haskell/transformers )
"
