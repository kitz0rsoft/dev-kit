# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/c1/d2/fe/c1d2fea3e517701376d24f403edad78428a47bcdebc9778346d5066ce70ae60bee10593de4d4bde69590ac1a25b04159cb1c85a7f7abccbba2ff449bf1b625d6 -> cargo-c-0.10.3-funtoo-crates-bundle-a7d34f1164c7fe659d23373043e86f86ed199789fbd780505729f2cd72f98883bf05b96723afaa2ca83cbdd1513c696c69e4a54c1240f50345355d4ea8f7571e.tar.gz"

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