# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://regen.mordor/61/78/dd/6178dda66c8d42e51556935dc9217357274ee632e20cb65946ab5f821724aa8195c1b1b599a7af8da38daa30a7faa683c5aa27a19eb7d762277c2a47c02fdcf9 -> cargo-c-0.10.8-funtoo-crates-bundle-63a68df098eccf69005ff8ea851a947c9397b0fc88cb8701cad40ae6384f4351009b115b55c9da059e832f47a758c9d4256142e5fbdc3e581be9c9d6f511c74a.tar.gz"

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