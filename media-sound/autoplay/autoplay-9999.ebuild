# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Daemon that keeps MPD playlist filled and learns what you like"
HOMEPAGE="http://github.com/codl/autoplay/"
SRC_URI="http://github.com/codl/autoplay/zipball/master"

EGIT_REPO_URI="git://github.com/codl/autoplay.git"
inherit git-2

LICENSE="public-domain"
SLOT="0"
KEYWORDS=""
IUSE=""

PYTHON_COMPAT=( python{3_4,3_5,3_6} )
PYTHON_REQ_USE="sqlite"
inherit python-single-r1

RDEPEND="${PYTHON_DEPS}
         dev-python/python-mpd[${PYTHON_USEDEP}]"

DEPEND="${RDEPEND}"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

src_prepare() {
	python_fix_shebang .
}

src_install() {
	newbin autoplay.py autoplay || die
	dodoc README.md
}
