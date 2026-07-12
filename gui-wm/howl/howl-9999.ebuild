# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

inherit git-r3

EGIT_REPO_URI="https://git.sr.ht/~wf/howl"
EGIT_OVERRIDE_COMMIT__WF_HOWL="52b7ba38"

DESCRIPTION="a small, extensible Wayland compositor controlled through an external client"
HOMEPAGE="https://git.sr.ht/~wf/howl"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="media-libs/libspng x11-libs/libxkbcommon dev-libs/neuwld dev-libs/neuswc"
RDEPEND="${DEPEND} !dev-libs/wld !dev-libs/swc"
BDEPEND="virtual/pkgconfig"

src_prepare() {
	default
	sed -i "s/spng/spng xkbcommon/" Makefile
}
