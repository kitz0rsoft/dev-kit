# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/68/14/0f/68140f9abbeded7ca82ffcd33357c276e17234738bc44b2d452cfea496904301d81599dc8a22f9c53f849726dda72e3532d09cd931460caf1d343d6552d72e05 -> cargo-c-0.10.11-funtoo-crates-bundle-bac371cd5b71e68b88cb5447576d66039c46cd62b18c7d12bb66e8919c59ef5a037ee0fadd92885ff29c98a71133fd560dde8c7d7b96efdbb2da99762ccb469b.tar.gz"

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