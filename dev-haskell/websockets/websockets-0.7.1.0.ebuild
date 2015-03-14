# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A sensible and clean way to write WebSocket-capable servers in Haskell."
HOMEPAGE="http://jaspervdj.be/websockets"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.9:=[profile?]
		<dev-haskell/attoparsec-0.11:=[profile?]
		>=dev-haskell/attoparsec-enumerator-0.2:=[profile?]
		<dev-haskell/attoparsec-enumerator-0.4:=[profile?]
		>=dev-haskell/base64-bytestring-0.1:=[profile?]
		<dev-haskell/base64-bytestring-1.1:=[profile?]
		=dev-haskell/binary-0.5*:=[profile?]
		=dev-haskell/blaze-builder-0.3*:=[profile?]
		=dev-haskell/blaze-builder-enumerator-0.2*:=[profile?]
		>=dev-haskell/case-insensitive-0.3:=[profile?]
		<dev-haskell/case-insensitive-0.5:=[profile?]
		>=dev-haskell/entropy-0.2.1:=[profile?]
		<dev-haskell/entropy-0.3:=[profile?]
		>=dev-haskell/enumerator-0.4.13:=[profile?]
		<dev-haskell/enumerator-0.5:=[profile?]
		>=dev-haskell/mtl-2.0:=[profile?]
		<dev-haskell/mtl-2.2:=[profile?]
		>=dev-haskell/network-2.3:=[profile?]
		<dev-haskell/network-2.5:=[profile?]
		=dev-haskell/network-enumerator-0.1*:=[profile?]
		>=dev-haskell/puremd5-0.2.2:=[profile?]
		<dev-haskell/puremd5-2.2:=[profile?]
		=dev-haskell/random-1.0*:=[profile?]
		=dev-haskell/sha-1.5*:=[profile?]
		>=dev-haskell/text-0.10:=[profile?]
		<dev-haskell/text-0.12:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		test? ( =dev-haskell/hunit-1.2*
			>=dev-haskell/quickcheck-2.4
			<dev-haskell/quickcheck-2.6
			>=dev-haskell/test-framework-0.4
			<dev-haskell/test-framework-0.7
			=dev-haskell/test-framework-hunit-0.2*
			=dev-haskell/test-framework-quickcheck2-0.2*
		)
		>=dev-haskell/cabal-1.8"
