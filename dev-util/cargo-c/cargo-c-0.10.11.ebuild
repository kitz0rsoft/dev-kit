# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/22/4e/93/224e93d007034ed5a94ad8a6ec7f82274d68081bf8d4d81d19760e0ff29fd5a215e73b89404b9d2509961859cd2277f9069a8b6e242aa8cc2654dc2252c33ff4 -> cargo-c-0.10.11-funtoo-crates-bundle-d7e01cdb5a21824e89507c9195110a2ac07ab777b7535dcae3cf34fc08cca30a56ca36f088921ccb20529bb1d019e8fbd5ef06675b37c71a796fbf98b2d03a6b.tar.gz"

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