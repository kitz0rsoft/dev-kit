# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/5b/49/29/5b4929d9f9d2591d3c8d3abf9983bc42a8727cb650d46337a445915e65cbe9bbf2c896a72bddae44b0412d5457bf621fb3bf302137ca1e85ab7f65cf767e5754 -> cargo-c-0.10.5-funtoo-crates-bundle-b320be1db11f34130de572bf695f61c4a0dcbe04a7a1060a46c0b1f069fe3ca6beac1e01a0179fd86bd726338115ec755f2134d5f5da8c8206ee7a5bc624e606.tar.gz"

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