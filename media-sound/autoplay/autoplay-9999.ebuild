# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Daemon that keeps MPD playlist filled and learns what you like"
HOMEPAGE="http://github.com/codl/autoplay/"
SRC_URI="http://github.com/codl/autoplay/zipball/master"

EGIT_REPO_URI="git://github.com/codl/autoplay.git"
inherit git-2

LICENSE="public-domain"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="dev-python/python-mpd"
PYTHON_DEPEND="3"
PYTHON_USE_WITH="sqlite"
inherit python

src_install() {
	newbin autoplay.py autoplay
}
