# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/62/47/e6/6247e61b344c3831ca2bbd07e462c4d7715a2b30838405a8cba065a4f6664605f9bc949f3ac543f1f8e23f0537b9a2046f9e9284fd857483070a86485a1acc95 -> cargo-c-0.10.11-funtoo-crates-bundle-c61bf99588a80e0854b6ea98df2f3fe0dd42e6c1ed99d3c166f1cd3b471abcf3738545136833f8660b13b0fc45346782d9485393fcc4fb136ab4ff104c747e36.tar.gz"

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