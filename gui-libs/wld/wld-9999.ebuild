# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3 multilib toolchain-funcs

EGIT_REPO_URI="https://github.com/michaelforney/wld.git"
EGIT_OVERRIDE_COMMIT_MICHAELFORNEY_WLD="549b0d2"

DESCRIPTION="A primitive drawing library targeted at Wayland"
HOMEPAGE="https://github.com/michaelforney/wld"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="x11-libs/libdrm x11-libs/pixman media-libs/fontconfig"
RDEPEND="${DEPEND}"
BDEPEND="gui-libs/wayland virtual/pkgconfig"

src_compile() {
	emake CC="$(tc-getCC)" PREFIX=/usr LIBDIR="/usr/$(get_libdir)"
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr LIBDIR="/usr/$(get_libdir)" install
}
