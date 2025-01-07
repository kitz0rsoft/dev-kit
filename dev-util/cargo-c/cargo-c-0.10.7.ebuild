# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/ad/2f/2b/ad2f2bce5bf030e9db207c4b14015af5a92db0236cda649bfbea38b875d3c8f10e8d0b121740caa1122df68b8b81701f2f72ea978507da40381ee035617c4e86 -> cargo-c-0.10.7-funtoo-crates-bundle-ce501a8f5d569337e88100dbf28f0a7e627babfab3a41ebfab18215c9ad3f30e7d09bac73f6783047adf53d33406c0f4b802bc0b871c4acfa364e205ed433b7d.tar.gz"

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