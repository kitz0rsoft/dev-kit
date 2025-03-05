# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/07/b9/e7/07b9e7115c214a272f1b9f465efde9c9cd3c50fedaed58a19c03adb13df6a0258b193a224f551bea38f59b15ca4fb874c4d0b9b395c399d03d2707d0216d83fc -> cargo-c-0.10.11-funtoo-crates-bundle-71ed83cf85855245ebccaf36b383993deccaa107ed532834ca5aaff36f42ebc5d8ae082f0374b268b5695c02c0c1d34f684c2d518b1106c0799666658aa03217.tar.gz"

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