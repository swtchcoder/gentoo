# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3

EGIT_REPO_URI="https://github.com/michaelforney/velox.git"
EGIT_OVERRIDE_COMMIT_MICHAELFORNEY_VELOX="40b3f9c"

DESCRIPTION="velox window manager"
HOMEPAGE="https://github.com/michaelforney/velox"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-libs/swc"
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig"

PATCHES=(
	"${FILESDIR}/font.patch"
)
