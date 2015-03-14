# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal git-2

MY_PN="GLUT"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A binding for the OpenGL Utility Toolkit"
HOMEPAGE="http://www.haskell.org/haskellwiki/Opengl"
EGIT_REPO_URI="git://github.com/haskell-opengl/GLUT.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="=dev-haskell/opengl-2.5*[profile?]
		=dev-haskell/openglraw-1.2*[profile?]
		=dev-haskell/statevar-1.0*[profile?]
		=dev-haskell/tensor-1.0*[profile?]
		>=dev-lang/ghc-6.12.1
		media-libs/freeglut"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"
