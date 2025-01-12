# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://regen.mordor/30/4a/ab/304aab5c4bd2edd55a928238dcf0d0a09440c0da5e203c3a1d737c9d312d07d100f4f0074d371056bf2bf67524dff2f04841d127a8914a490ba7388c8ac94ec7 -> cargo-c-0.10.8-funtoo-crates-bundle-cc1dfb9aad132bdd04ef8778baa8140f5e6a4910b44de6adcd6e980a779f3a031c013d027b2fe175cff7da812d2e9025546c6e8eb721b5cf48faf89260cc2d41.tar.gz"

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