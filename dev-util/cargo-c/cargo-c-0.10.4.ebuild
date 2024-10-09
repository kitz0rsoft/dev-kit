# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/e8/59/60/e8596018391117093f4fdd8a422b89bef5a60ae2b04f8dcb9664aac73bae7481016fd0132fa5a76af9bf1289145adb22928af5b1657d5137b44015d1248861fe -> cargo-c-0.10.4-funtoo-crates-bundle-486d902e1cdba9b05adefb7c9b389484cf86e485bed367d3662014eefd61fe654a7ca895ab3885e2183caf09dccf1613e95fd3167c3c10f06dea00c0f1e4df8d.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND="sys-libs/zlib
	dev-libs/openssl:0=
	dev-vcs/git
	net-misc/curl[ssl]
"
BDEPEND="virtual/rust"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/lu-zero-cargo-c-* ${S} || die
}