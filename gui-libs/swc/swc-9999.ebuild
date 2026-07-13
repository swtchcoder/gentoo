# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3 multilib toolchain-funcs
EGIT_REPO_URI="https://github.com/michaelforney/swc.git"
EGIT_OVERRIDE_COMMIT_MICHAELFORNEY_SWC="e4ce167"

DESCRIPTION="a library for making a simple Wayland compositor"
HOMEPAGE="https://github.com/michaelforney/swc"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-libs/libinput x11-libs/libxkbcommon x11-libs/libxkbcommon dev-utils/wld dev-libs/wayland-protocols x11-libs/libdrm x11-libs/pixman media-libs/fontconfig"
RDEPEND="${DEPEND}"
BDEPEND="dev-libs/wayland virtual/pkgconfig"

src_compile() {
	emake CC="$(tc-getCC)" PREFIX=/usr LIBDIR="/usr/$(get_libdir)"
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr LIBDIR="/usr/$(get_libdir)" install
}
