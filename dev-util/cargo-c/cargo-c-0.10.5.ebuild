# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/09/e7/30/09e7300c27b23f40863e1dcea909e52fe5d8dae83720d9128fba5452b1014068eb3da1ec2fa90d6a61975f94fbcd9f8540425ba60d62e8e05e894d279e3cfb30 -> cargo-c-0.10.5-funtoo-crates-bundle-69c06c8fe078a32509f4ba8056e802e00bf9248121cf365eeee9d01aa4985cc93f267c58527152de5a27a46d1d7ea9e5fed0e535b150e7642f6c542e043ebdb8.tar.gz"

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