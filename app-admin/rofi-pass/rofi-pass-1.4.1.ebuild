# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $


EAPI=5
inherit eutils  git-r3

DESCRIPTION="Rofi frontend for pass"
HOMEPAGE="https://github.com/carnager/rofi-pass"

EGIT_REPO_URI="https://github.com/carnager/rofi-pass.git"
SRC_URI="https://github.com/carnager/${PN}/archive/${PV}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

#EGIT_COMMIT="fcac25e8fb9f0111d00142b5cf61e471584480d5"

DEPEND="app-admin/pass
	x11-misc/rofi"
RDEPEND="${DEPEND}"

src_compile() {
	emake DESTDIR="${D}" PREFIX="/usr" install
}

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install
}
