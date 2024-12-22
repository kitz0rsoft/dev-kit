# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/9d/0e/f8/9d0ef8a43e86c1b7c8ac4835e50cd7a576ebc5b21010a78852c9336c8bd8d79c458008c118b988d364508b570a6d9d32fdb735054df9b0c59f8206696c5fe3c6 -> cargo-c-0.10.7-funtoo-crates-bundle-3ac4f23dbdbcfd0e5fb5bd99988cc2859d22546cad2d4ae253cb43513c28c1fd28faa86cb9097c7a07842ef5f5adf4db17cd55e7c1ccb04b7ab7755df82d35d0.tar.gz"

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