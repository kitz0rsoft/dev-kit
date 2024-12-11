# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/1b/52/f7/1b52f7a306b51995a0f8a17569dd663af71a9fbd86b46fc0351b21b6ffc2f4afd5e73fc3916aa0a1a8bf1479778d9fa606ccfc8ddea63a723ce0d43f963d404f -> cargo-c-0.10.7-funtoo-crates-bundle-4c69bd8a658b39948f89577b764fe7a5f796fadaefce5cb699b46961bd850462af975768b601c4f3ab5518db1d6bbb8debb12ae7e82da381ddd00e7421f3ffa9.tar.gz"

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