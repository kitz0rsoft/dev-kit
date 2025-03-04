# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/14/a6/f3/14a6f335f1f20c952cf233888c9aa53767b4f67132439e15388f0db5b7444dc5a85b37439da12a31a89b78329a25c8692c30c2ba3927d3260bac7c1d4b1b3985 -> cargo-c-0.10.11-funtoo-crates-bundle-b539ee0204f96cf3c64dd1532c850f16a513225d02f0cc12698ee53cc378a7f2b8303299d2f200597cfe00a6ba45fdb38228c40fdf4ef0e6cbf0b81010837d68.tar.gz"

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