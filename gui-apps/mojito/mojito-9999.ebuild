# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3

EGIT_REPO_URI="https://git.sr.ht/~dlm/mojito"
EGIT_OVERRIDE_COMMIT__DLM_MOJITO="4c6b988e"

DESCRIPTION="A featherweight, lime-scented bar for Wayland"
HOMEPAGE="https://git.sr.ht/~dlm/mojito"

LICENSE="0BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-libs/wayland gui-libs/neuswc gui-libs/neuwld"
RDEPEND="${DEPEND} !gui-libs/swc !gui-libs/wld"
BDEPEND="virtual/pkgconfig"

src_prepare() {
	default
	sed -i "s/-O2/-O2 -Iprotocol/" Makefile
}
