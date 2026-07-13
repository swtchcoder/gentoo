# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3

EGIT_REPO_URI="https://codeberg.org/sewn/wawa"
EGIT_OVERRIDE_COMMIT_SEWN_WAWA="249f43876d"

DESCRIPTION="Distinctive simpler wlroots wallpaper setter"
HOMEPAGE="https://codeberg.org/sewn/wawa"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="gui-libs/neuswc"
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig"
