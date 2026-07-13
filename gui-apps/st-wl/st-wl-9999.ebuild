# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3 multilib toolchain-funcs

EGIT_REPO_URI="https://github.com/marchaesen/st-wl"
EGIT_OVERRIDE_COMMIT_MARCHAESEN_ST_WL="62538a1"

DESCRIPTION="st is a simple terminal emulator for X which sucks less."
HOMEPAGE="https://github.com/marchaesen/st-wl"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="x11-libs/libdrm x11-libs/pixman media-libs/fontconfig"
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig"

src_prepare() {
	default
	sed -i \
		-e 's#tic -sx st\.info#tic -sx -o "$(DESTDIR)$(PREFIX)/share/terminfo" st.info#' \
		Makefile || die
}

src_compile() {
	emake CC="$(tc-getCC)" PREFIX=/usr LIBDIR="/usr/$(get_libdir)"
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr LIBDIR="/usr/$(get_libdir)" install
}
