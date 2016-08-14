# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit multilib multilib-minimal

DESCRIPTION="LADSPA plugin for bs2b headphone filter"
HOMEPAGE="http://bs2b.sourceforge.net/"
SRC_URI="mirror://sourceforge/bs2b/LADSPA%20splugin/${PV}/${P}.tar.bz2"

LICENSE="|| ( GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="media-libs/ladspa-sdk
		>=media-libs/libbs2b-3.1.0"

RDEPEND="${DEPEND}"

src_prepare() {
	multilib_copy_sources
}

multilib_src_compile() {
	tc-export CXX
	emake DESTDIR="${D}" PLUGIN_LIB="bs2b.so"
}

multilib_src_install() {
	insinto /usr/$(get_libdir)/ladspa
	doins src/.libs/bs2b.so
}

multilib_src_install_all() {
	dodoc AUTHORS THANKS
}
