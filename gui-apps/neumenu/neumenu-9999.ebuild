# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3

EGIT_REPO_URI="https://git.sr.ht/~uint/neumenu"
EGIT_OVERRIDE_COMMIT__UINT_NEUMENU="88d0bd8b"

DESCRIPTION="neumenu is an efficient dynamic menu for Wayland."
HOMEPAGE="https://git.sr.ht/~uint/neumenu"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="gui-libs/neuwld x11-libs/libdrm x11-libs/pixman media-libs/fontconfig"
RDEPEND="${DEPEND}"
BDEPEND="dev-libs/wayland virtual/pkgconfig"
