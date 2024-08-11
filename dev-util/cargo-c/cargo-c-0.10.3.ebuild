# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/dc/ae/dc/dcaedc90a7b2efec611fd38de4e0d92eba46e7bc046023c0489d8c2d9d1e6aea04a6a2f1d7baf30e18d5b62b2995aa0b835539724be20ffea4bb6c164f3d2a37 -> cargo-c-0.10.3-funtoo-crates-bundle-b8fa64b45b0292db8fec19f65907cd1f964c50c598710b09cb57f9c2b096246442cc39cdc700410f563fdee4b5babaed62f7cc8446700fd39fed7055bc74443c.tar.gz"

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