# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/23/e4/24/23e4245a9f7f242c8872208204a198c8f7418fd036774cd3c969f16c205b903b7d9293c9f54d34b0908e0cfdff5b19f1ec1b64ee22c388a0ca55a19f527cb871 -> cargo-c-0.10.7-funtoo-crates-bundle-61b1833b600d1d7b9d3028730a72ee2f90d417634bd3fdb9f34fe5d181317e2b599ee7d933c3c0a5230772f4a2031c6e40261fd579c1c284cfd0f8466a0b97e1.tar.gz"

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