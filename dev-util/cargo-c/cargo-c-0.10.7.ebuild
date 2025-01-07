# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/2d/0a/c4/2d0ac415818804ca616802defd634e1a5d54057ce7c3d6be14bead159250de342025a6b520dff5b51ef40a521ea93deba6b485fb169e8f70fe8c748ca9d96d73 -> cargo-c-0.10.7-funtoo-crates-bundle-22af83adf33748d4b2f202099196f67e59d65181df0a16e5f7d9dd3de1b10689e7f2ffab72fd5423409076a32314b0e256b898f88f31408b29c14755529b87a1.tar.gz"

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