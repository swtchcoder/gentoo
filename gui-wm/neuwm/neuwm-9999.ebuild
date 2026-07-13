# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3 meson multilib toolchain-funcs

EGIT_REPO_URI="https://git.sr.ht/~pfr/neuwm"
EGIT_OVERRIDE_COMMIT__PFR_NEUWM="2ab821a8"

DESCRIPTION="a wayland compsitor based neuswc, forked from wsxwm and inspired by hevel"
HOMEPAGE="https://git.sr.ht/~pfr/neuwm"

LICENSE="ISC"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="x11-libs/libxkbcommon gui-libs/neuwld dev-libs/neuipc gui-libs/neuswc"
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig"

src_configure() {
	meson_src_configure
}

src_compile() {
	meson_src_compile
}

src_install() {
	meson_src_install
}
