# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils eutils git-2

DESCRIPTION="J, an implementation of APL for POSIX systems"
HOMEPAGE="http://jsoftware.com/"

EGIT_REPO_URI="git://github.com/openj/core.git"
#EGIT_PROJECT="jlang"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="sys-devel/gcc
		sys-libs/readline"
RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}/j-executable-name-cmake.patch"
}

