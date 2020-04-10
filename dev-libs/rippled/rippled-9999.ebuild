# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils check-reqs scons-utils systemd user git-r3

DESCRIPTION="Ripple P2P payment network reference server"
HOMEPAGE="https://ripple.com"
EGIT_REPO_URI="https://github.com/ripple/rippled.git"
LICENSE="ISC MIT"

SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="dev-libs/boost
		dev-libs/openssl
		>=dev-libs/protobuf-2.4.1
		test? ( net-libs/nodejs )
		virtual/pkgconfig"

RDEPEND="dev-libs/openssl"

CHECKREQS_MEMORY=3G
CHECKREQS_DISK_BUILD=750M

pkg_setup() {
	check-reqs_pkg_setup
	enewuser ripple
}

pkg_pretend() {
		if [[ ${MERGE_TYPE} != binary ]]; then
				if [[ $(tc-getCXX) == *g++ && $(tc-getCXX) != *clang++ ]] ; then
						if [[ $(gcc-major-version) == 4 && $(gcc-minor-version) -lt 8 || $(gcc-major-version) -lt 4 ]] ; then
								eerror "You need at least sys-devel/gcc-4.8.0 to compile ${PN}"
								die "You need at least sys-devel/gcc-4.8.0 to compile ${PN}"
						fi
				fi
		fi
}

src_compile() {
	escons
}

src_test() {
	build/rippled --unittest || die "rippled built-in unit tests failed"
}

src_install() {
	dobin build/rippled

	keepdir /var/log/rippled /var/lib/rippled
	fowners ripple:ripple /var/log/rippled /var/lib/rippled

	systemd_dounit "${FILESDIR}"/rippled.service
	eqawarn "${PN} does not come with an OpenRC init script, if you would like to submit one,"
	eqawarn "see the #bitcoin-gentoo channel on Freenode or https://gitorious.org/bitcoin/gentoo/"

	dodoc README.md doc/*.txt doc/*.cfg

	insinto /var/lib/rippled
	newins doc/rippled-example.cfg rippled.cfg
	dosym /var/lib/rippled/rippled.cfg /etc/rippled.cfg
}

pkg_postinst() {
	einfo
	einfo "It is strongly recommended to review the latest"
	einfo "rippled release notes before continuing."
	einfo "https://ripple.com/wiki/index.php?title=Rippled-${PV}"
	einfo
	einfo "Consult the following for recommended initial servers and validators"
	einfo "https://ripple.com/ripple.txt"
	einfo
}
