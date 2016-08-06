# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python3_{3..5} )

inherit git-r3 distutils-r1

DESCRIPTION="Notmuch spam classification interface"
HOMEPAGE="git://finestructure.net/notspam"
EGIT_REPO_URI="git://finestructure.net/notspam"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="net-mail/notmuch[python]"
RDEPEND="${DEPEND}"
