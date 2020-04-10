# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Jconvolver is a Convolution Engine for JACK"
HOMEPAGE="http://kokkinizita.linuxaudio.org/linuxaudio"
SRC_URI="http://kokkinizita.linuxaudio.org/linuxaudio/downloads/${P}.tar.bz2"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/libclthreads"
RDEPEND="${DEPEND}
	media-libs/zita-convolver
	virtual/jack"

DOCS=( COPYING README README.CONFIG )

src_compile() {
	emake -C source PREFIX="${EPREFIX}"/usr
}

src_install()  {
	emake -C source \
		PREFIX="${EPREFIX}"/usr \
		DESTDIR="${D}" \
		install
	einstalldocs

	docinto examples
	dodoc -r config-files/*
}
