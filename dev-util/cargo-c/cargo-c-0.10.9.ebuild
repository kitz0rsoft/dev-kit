# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/33/3c/6f/333c6f37ab222656c5bccfb189d25ca4d00e20eccb827db8c99bd692fc2f3faf8e8d859f7f5090381fc2b72e65d7216c4090ce299b0f2c1fd4d586888cf84512 -> cargo-c-0.10.9-funtoo-crates-bundle-cc3c30946f95b52156b5bd7d4202961e08d214e58c9259cf9ab7e8be69c69259c0193afd79e8abaeb6f8894b8ad1abf616835f27383640eaaf982d4528ba516c.tar.gz"

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