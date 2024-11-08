# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/6f/da/fc/6fdafc71c780c5d9b9678eab87caae31380ee803eda61a26d9135ccb8d96f4b514139abb6af86604b59639683dc544323623d811222cb40a7dc8d03274251a75 -> cargo-c-0.10.5-funtoo-crates-bundle-fa5fbc2199f6743ac8e5a3ef9e67f9fc8aef40035de54f8136326c064e203e719d50b85762d855b0fbd82bfd370b0320a9f47f09eebcf2802cea6843cbaae605.tar.gz"

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