# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit eutils multilib toolchain-funcs flag-o-matic

DESCRIPTION="Configurable browser plugin to launch streaming media players."
SRC_URI="http://mozplugger.mozdev.org/files/${P}.tar.gz"
HOMEPAGE="http://mozplugger.mozdev.org/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc ~sparc ~x86"
IUSE="xembed"

RDEPEND="x11-libs/libX11"
DEPEND="${RDEPEND}"

src_prepare() {
	epatch "${FILESDIR}/${PN}-2.1.6-Makefile.in.patch"
	sed -i "s:libprefix=.*:libprefix=/$(get_libdir):" Makefile.in
}

src_configure() {
	local myconf
	if [[ -x ${ECONF_SOURCE:-.}/configure ]] ; then
		if use xembed; then
			myconf="${myconf} --enable-always-xembed"
		fi

		econf \
			${myconf}
	fi
}

src_compile() {
	append-ldflags -Wl,-z,noexecstack
	emake \
		CC="$(tc-getCC)" \
		LD="$(tc-getCC)" \
		XCFLAGS="${CFLAGS} -fPIC -Wall" \
		LDFLAGS="${LDFLAGS}" \
		all
}

src_install() {
	emake DESTDIR="${D}" PLUGINDIRS="usr/$(get_libdir)/nsbrowser/plugins/" install
	dodoc ChangeLog README
}
