# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/30/e6/5b/30e65b2657296327d12d5b63a5beada9e91da6afe39505a3a7eace25ec29ffea81ad4e9ee3c5454773ae8c94eebbb165e2966a77b40aaab3d5020ce699d1977b -> cargo-c-0.10.7-funtoo-crates-bundle-97ea6f94fa07b936c6f4e92fce6f2884a780b6effd07c045288013f474804d10aa48ae3117abdadef56bee0dcd94a47fe784c9ae23c3bf4482d622d9ef53ccbf.tar.gz"

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