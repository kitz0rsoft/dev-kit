# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/95/ef/a1/95efa1fa1a55d673d88af1f014b9977eac156b40eb2ed590ac88e4efd6750c388dca79b38aa678d3522a67f5e452e9a11bceddacfe74eb8ef1029c4f0004ff58 -> cargo-c-0.10.11-funtoo-crates-bundle-0d575f949fd3d5368291043d451ee18465723347b4b041eca7098c54b146d18c8a77c835e3d348538872b95eebeadc3aefc19573e2f75b8e7e2d7b763389ed81.tar.gz"

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