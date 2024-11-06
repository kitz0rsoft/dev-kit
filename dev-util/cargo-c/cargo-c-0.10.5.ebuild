# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/23/fc/da/23fcda568026bcd366ffa8795545d02db8c1626541c6b39f0001e6cd29c6b34aedf8a18bcbd772afa1f9f44eb0bfbda32caa2c8ecffbcb7ce20148e3c9cf1b2c -> cargo-c-0.10.5-funtoo-crates-bundle-a135201084ad3979b12bfa1d0abd6cc9bbc3c17784066865fc24eafb9c0f0c000dd49f9df6dd691b4ae761cb8217536bb751aaa99be039bc5f1e743abacf5ab6.tar.gz"

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