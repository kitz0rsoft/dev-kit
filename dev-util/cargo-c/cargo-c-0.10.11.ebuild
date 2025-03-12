# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/ee/5e/de/ee5ede0c0c772f904c1419212c4e70caf984a19a3884666cc0a61972db41711d256bcb5935511cd1028f0652a8703cfabe5a9529164cdcd820adabb5bc8c1550 -> cargo-c-0.10.11-funtoo-crates-bundle-3ab35fe6c7587135dcdd28bdb9e6069ac702fa4442d8186de24c385d65814efbe4351af7cf43d6ea446527442fa9d046b29958f0f189fc44dd7e66c11639f8e8.tar.gz"

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