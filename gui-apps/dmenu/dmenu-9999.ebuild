# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3 multilib toolchain-funcs

EGIT_REPO_URI="https://github.com/michaelforney/dmenu.git"
EGIT_OVERRIDE_COMMIT_MICHAELFORNEY_DMENU="f385d9d"

DESCRIPTION="dmenu is an efficient dynamic menu for Wayland."
HOMEPAGE="https://github.com/michaelforney/dmenu"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="x11-libs/libdrm x11-libs/pixman media-libs/fontconfig"
RDEPEND="${DEPEND}"
BDEPEND="gui-libs/wayland virtual/pkgconfig"
