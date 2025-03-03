# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/94/de/e4/94dee494aa4948786da835bc2b7cbb21aeea40a2254c127b06b0a5601969205bed3b5fe5dba67ce416556dc8978c9f058782c9734d67df8e3ab1aa6d1d0c0189 -> cargo-c-0.10.11-funtoo-crates-bundle-1362d5d7e0eefdbd9d6941030d4bae5d7b5a91c62169e65574c1929752b20aac23701dc5361bbb56adfdd96a124a6a382112f1e3186ba0bad83c4b88849b2f16.tar.gz"

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