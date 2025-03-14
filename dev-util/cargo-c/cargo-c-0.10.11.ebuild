# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/9b/58/70/9b5870f2bb3393c6542f7abddc9fd0816ed7b452a451ebdc773ad6cb975e495763a32b93abe599ecc6392888e11636620031c33fefac0529a72c0a842d0ebe1d -> cargo-c-0.10.11-funtoo-crates-bundle-a2af6908ce0e9bf9daa2b4ed00b25cb1976bc2fb7dad1696ef4685a7796b35f572f041258ebb22bba0db1b56789604d53c7132b5eb134e316835cb10d7e85658.tar.gz"

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