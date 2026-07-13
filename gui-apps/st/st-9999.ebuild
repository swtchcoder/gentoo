# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3 multilib toolchain-funcs

EGIT_REPO_URI="https://github.com/michaelforney/st.git"
EGIT_OVERRIDE_COMMIT_MICHAELFORNEY_ST="83d6bc6"

DESCRIPTION="st is a simple terminal emulator for X which sucks less."
HOMEPAGE="https://github.com/michaelforney/st"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="x11-libs/libdrm x11-libs/pixman media-libs/fontconfig"
RDEPEND="${DEPEND}"
BDEPEND="dev-libs/wayland virtual/pkgconfig"

src_compile() {
	emake CC="$(tc-getCC)" PREFIX=/usr LIBDIR="/usr/$(get_libdir)"
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr LIBDIR="/usr/$(get_libdir)" install
}
