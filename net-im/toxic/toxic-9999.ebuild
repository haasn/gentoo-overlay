# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit autotools git-2

DESCRIPTION="Reference CLI for Tox"
HOMEPAGE="https://github.com/Tox/toxic"
SRC_URI=""
EGIT_REPO_URI="https://github.com/Tox/toxic.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	net-im/tox[-nacl]
	sys-libs/ncurses[unicode]"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_compile() {
	make PREFIX="/usr"
}

src_install() {
	cd "${S}/build"
	emake install PREFIX="/usr" DESTDIR="${D}"
}
