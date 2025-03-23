# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/e3/b0/2b/e3b02ba598dbbb36754dd80023db1bb898fa64888d49bd6caaf2855bbe751340bd18f25feab52389b31e800acbf3f1c2a70bed93ca24cf75636b25236664a3d7 -> cargo-c-0.10.11-funtoo-crates-bundle-7710e0033d76b7bd702222fcc535357ae4fda26284153a03b569e1755b5fd111308d2f3b1d8cc79fa18967395d0d7cf8d3c9bcb13782c5ce30bb4a9f0ff21b56.tar.gz"

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