# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit multilib git-r3

DESCRIPTION="IPMI Sensor Monitoring Plugin for Nagios/Icinga"
HOMEPAGE="http://www.thomas-krenn.com/en/oss/ipmi-plugin/"
EGIT_REPO_URI="https://github.com/thomas-krenn/check_ipmi_sensor_v3.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="dev-lang/perl
	dev-perl/IPC-Run
	sys-libs/freeipmi"

src_install() {
	exeinto /usr/$(get_libdir)/nagios/plugins
	doexe check_ipmi_sensor

	dodoc changelog.txt
}
