# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/b9/ce/e4/b9cee4e39b0bd6cbcff575286d3004ee17d94cd971d569e6da0cde7fd602a0b35536c52dabe740733bc8c1368f5b82aa1df397090fa6c0bd0a38490eb4e29a3c -> cargo-c-0.10.7-funtoo-crates-bundle-970e957baaeeadcdf9dfc14ea43281a093d98a1fabc449ce8203cef53edc84652fe0b8bbaba77d05117ea9c4e01d889cb31ffcccc88027f746c709e8e6772b90.tar.gz"

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