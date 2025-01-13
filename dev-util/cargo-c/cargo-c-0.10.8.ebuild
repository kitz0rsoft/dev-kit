# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://regen.mordor/32/7b/90/327b90c8491a5004470b44a545e1e6721b360bb63862d0d6add6afa6166cd47e00ae2af7de395af441b1779f6bf1596cf194d56d9d948c5d53bf1a618ebd69d6 -> cargo-c-0.10.8-funtoo-crates-bundle-17b72318caa1d3b1cc0cd377133aa4e26410cb4c0952ad48927a2a60919da47c18920da0d2e0805f7c6c840a6db228b5e8ea0d812667b8cc9b961710597a5682.tar.gz"

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