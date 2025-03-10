# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/02/fc/c5/02fcc5a16d81216ef438481d4cadf3b3b6367aff88a195be2cd625eb77485f1340f18951f934e5d87f2055593aa48e6172d092c3aa630b9f1c3ffae1ccc8a55d -> cargo-c-0.10.11-funtoo-crates-bundle-2e92f538caaed672a1ab375266be22820e6755b743b7e17396da69128736e4cad4f4038c7e10473e5380814b5a03f1a0a0cec757a05cadb5d1699e02230d3eb6.tar.gz"

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