# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3 meson multilib toolchain-funcs

EGIT_REPO_URI="https://codeberg.org/binkd/neuipc"
EGIT_OVERRIDE_COMMIT__BINKD_NEUIPC="d654f2fa00"

DESCRIPTION="lightweight unix IPC library focused on compatibility with neuswc"
HOMEPAGE="https://codeberg.org/binkd/neuipc"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

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
