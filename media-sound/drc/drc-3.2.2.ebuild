# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Tools to generate digital room correction filters"
HOMEPAGE="http://drc-fir.sourceforge.net/"
SRC_URI="https://sourceforge.net/projects/drc-fir/files/${P}.tar.gz"

LICENSE="GPL-2.0+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

PATCHES=( ${FILESDIR}/lsconv-fix-invalid-fread-usage.patch )
DOCS=( COPYING )

src_compile() {
	emake -C source
}

src_install() {
	emake -C source DESTDIR="${D}" install
	dodoc -r doc/* source/doc/*
	docompress -x /usr/share/doc/${PF}
}
