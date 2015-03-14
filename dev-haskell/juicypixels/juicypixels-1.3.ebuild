# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="JuicyPixels"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Picture loading/serialization (in png, jpeg and bitmap)"
HOMEPAGE="https://github.com/Twinside/Juicy.Pixels"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cereal-0.3.3.0[profile?]
		<dev-haskell/cereal-0.4[profile?]
		>=dev-haskell/deepseq-1.1[profile?]
		<dev-haskell/deepseq-1.4[profile?]
		>=dev-haskell/mtl-1.1[profile?]
		<dev-haskell/mtl-2.2[profile?]
		=dev-haskell/primitive-0.4*[profile?]
		>=dev-haskell/transformers-0.2.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		>=dev-haskell/vector-0.9[profile?]
		<dev-haskell/vector-1.0[profile?]
		>=dev-haskell/zlib-0.5.3.1[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10"

S="${WORKDIR}/${MY_P}"
