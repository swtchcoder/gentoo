# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3 meson multilib toolchain-funcs

EGIT_REPO_URI="https://git.sr.ht/~shrub900/neuswc"
EGIT_OVERRIDE_COMMIT__SHRUB900_NEUSWC="975ad562"

DESCRIPTION="a fork of swc with many more features and fixes implemented, including wallpapers, screenshots, and better cursor handling"
HOMEPAGE="https://git.sr.ht/~shrub900/neuswc"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="gui-libs/neuwld gui-libs/libinput x11-libs/libxkbcommon x11-libs/libxkbcommon dev-utils/wld gui-libs/wayland-protocols x11-libs/libdrm x11-libs/pixman media-libs/fontconfig gui-libs/wayland"
RDEPEND="${DEPEND} !gui-libs/wld !gui-libs/swc"
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
