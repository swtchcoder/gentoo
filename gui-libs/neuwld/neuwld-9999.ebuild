# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3 meson multilib toolchain-funcs

EGIT_REPO_URI="https://git.sr.ht/~shrub900/neuwld"
EGIT_OVERRIDE_COMMIT__SHRUB900_NEUWLD="a86df062"

DESCRIPTION="a fork of wld with proper font rendering"
HOMEPAGE="https://git.sr.ht/~shrub900/neuwld"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="x11-libs/libdrm x11-libs/pixman media-libs/fontconfig dev-libs/wayland"
RDEPEND="${DEPEND} !gui-libs/wld"
BDEPEND="virtual/pkgconfig"

src_configure() {
	local emesonargs=(
		--prefix="${EPREFIX}/usr"
		--libdir="${EPREFIX}/usr/$(get_libdir)"
	)
	meson_src_configure
}

src_compile() {
	meson_src_compile
}

src_install() {
	meson_src_install
}
