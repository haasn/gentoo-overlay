# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="2"
GCONF_DEBUG="no"

DESCRIPTION="Screencasting program that saves casts as GIF files, rdeps only"
HOMEPAGE="http://people.freedesktop.org/~company/byzanz/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=x11-libs/libXdamage-1.0
	>=dev-libs/glib-2.16:2
	>=x11-libs/gtk+-2.17.10:2
	>=media-libs/gst-plugins-base-0.10.24"
