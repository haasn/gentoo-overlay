# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit autotools multilib eutils git-2

DESCRIPTION="Free as in freedom Skype replacement"
HOMEPAGE="http://tox.im/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/irungentoo/ProjectTox-Core.git"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS=""
IUSE="+dht-bootstrap-daemon +nacl +ntox static-libs test"

RDEPEND="
	dht-bootstrap-daemon? ( dev-libs/libconfig )
	!nacl? ( dev-libs/libsodium )
	ntox? ( sys-libs/ncurses )"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	nacl? ( net-libs/nacl )
	test? ( dev-libs/check )"

src_prepare() {
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable nacl) \
		$(use_enable test tests) \
		$(use_enable ntox) \
		$(use_enable dht-bootstrap-daemon) \
		$(use_enable static-libs static) \
		--with-nacl-headers=/usr/include/nacl \
		--with-nacl-libs=/usr/$(get_libdir)/nacl
}

src_install() {
	default
	prune_libtool_files
}
