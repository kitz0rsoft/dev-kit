# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/22/b7/d0/22b7d0c953fa9589175705c6525adc433fb4d45e82903bf29e508c995aec9b18e65a075457cb4e01666df9d3b613a4cb29085500dcfac545bdbfe44aaabb3582 -> cargo-c-0.10.9-funtoo-crates-bundle-b19eb7ee0d5c9d4672adfdf1c06bf2481334afe44525b4ba3e3c18d3772f25f658d8b12bbfac340687ad476d08093e4f0ff5a56aae2fced22949a639566becb2.tar.gz"

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