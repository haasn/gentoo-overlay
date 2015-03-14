# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit autotools git-2

DESCRIPTION="Library for SSA/ASS subtitles rendering"
HOMEPAGE="http://code.google.com/p/libass/"
EGIT_REPO_URI="https://github.com/MrSmile/libass"
EGIT_BRANCH="fast-blur"

LICENSE="ISC"
SLOT="0"
KEYWORDS=""
IUSE="+enca +fontconfig +harfbuzz static-libs"

RDEPEND="
	enca? ( app-i18n/enca )
	fontconfig? ( >=media-libs/fontconfig-2.4.2 )
	harfbuzz? ( >=media-libs/harfbuzz-0.7 )
	>=media-libs/freetype-2.2.1:2
	>=dev-libs/fribidi-0.19.0
	virtual/libiconv
"
DEPEND="${RDEPEND}
	virtual/pkgconfig
"

DOCS="Changelog"

src_prepare() {
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable enca) \
		$(use_enable fontconfig) \
		$(use_enable harfbuzz) \
		$(use_enable static-libs static)
}

src_install() {
	default

	find "${ED}" -name '*.la' -delete
}
