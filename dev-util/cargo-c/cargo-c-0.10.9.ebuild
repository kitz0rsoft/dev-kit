# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/aa/bd/e6/aabde673442dfd6d545d9f9778a7dd78d05da96dd2c0c19e0d7e9499e8bb41b936ed436b5833dbc2b1ca5ddf08717457e27985356dc2b4fc909a3620651a48ed -> cargo-c-0.10.9-funtoo-crates-bundle-ad41f2aff22c8ff76b2879dd16f6357437a0b989e92ee4044a7a96250161c81c09cdf40eeb5c23fd2fb3e38021a11a3c3fc89cd2b2f7fc9a939b07488900bb1f.tar.gz"

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