# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/94/89/8e/94898eb95a076351524007ba2e39a2967159b303ffb9e0c550d1e271a8408de7453b3ae9ef4f063179c3530b4f459eebd48628533fa61d179c4e0d190ed9bb4a -> cargo-c-0.10.11-funtoo-crates-bundle-afb1126f8df236504f92f234bac633e2492bd2275580d76b547873e1a94326b4ca3e06c5537e3957bd8144318ce4ad4b901d8b5b153975cc64f5f0da92fb14f2.tar.gz"

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