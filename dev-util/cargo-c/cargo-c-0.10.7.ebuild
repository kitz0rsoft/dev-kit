# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/d5/da/91/d5da9153e318d68e57f2446d44cbdaab57307b2811bc88ab42bb803cb57a7f4d38146964427975bb575ee76c22a954426a1415de13aef7cae0dfbb492d688668 -> cargo-c-0.10.7-funtoo-crates-bundle-357caad05970791acbd3e58a9fca00d4b17130f794e8f83febb913431e97fe2c2462330cc42e066e0c35e32f99fbee57b86651e4bb9b3177cb1edc4d57e0e8cd.tar.gz"

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