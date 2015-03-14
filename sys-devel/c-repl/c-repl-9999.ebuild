# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.17

EAPI=4

CABAL_FEATURES="bin"
inherit haskell-cabal git-2

DESCRIPTION="C read-eval-print loop"
HOMEPAGE="http://neugierig.org/software/c-repl/"
EGIT_REPO_URI="git://github.com/martine/c-repl.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="sys-devel/gdb"
DEPEND="${RDEPEND}
		dev-haskell/c2hs
		>=dev-haskell/cabal-1.2
		~dev-haskell/hexpat-0.9
		~dev-haskell/hgdbmi-0.1
		dev-haskell/hunit
		dev-haskell/mtl
		dev-haskell/parsec
		dev-haskell/readline
		>=dev-lang/ghc-6.10.1"
