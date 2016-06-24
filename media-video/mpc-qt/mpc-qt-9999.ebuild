# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3 qmake-utils

DESCRIPTION="A clone of Media Player Classic reimplemented in Qt."
HOMEPAGE="https://github.com/cmdrkotori/mpc-qt"
EGIT_REPO_URI="https://github.com/cmdrkotori/mpc-qt.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=">=media-video/mpv-0.17[libmpv]
        dev-qt/qtx11extras:5"
RDEPEND="${DEPEND}"

src_compile()
{
	eqmake5
	emake
}

src_install()
{
	dobin ${PN}
}
