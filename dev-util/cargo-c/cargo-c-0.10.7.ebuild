# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/23/99/29/2399298c8a5d91717dfdc976f49d321e191e3124c26204724d1201f55025e4ffdfba452667c6c8f810983b7bb1261d935a780fc1ce35721a698f4520956a7c57 -> cargo-c-0.10.7-funtoo-crates-bundle-9403fc6358b6c157fbd708d4bb77d8c359b7b2f6b1e21956aa264b45927166c6957565901993d9382912b4fe38684da9ff8a4bd1fc242504592f557e0ce0029b.tar.gz"

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