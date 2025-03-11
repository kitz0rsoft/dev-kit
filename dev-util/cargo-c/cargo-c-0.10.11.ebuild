# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/4c/bc/fb/4cbcfb546b893165cfc13eeedd743ae5738c21861e625cb47581fe46d6b0c6fd41b468f11d4f2511e2770d8b95626f63cda9b2bf4739324c0df6dcd19a90f6be -> cargo-c-0.10.11-funtoo-crates-bundle-fdae2fb00a83104584a7888951d4e98e12070f1f678c19d1d5fa3280920abb32380abd2a386db986cbb350fd25a4936500d6f3ab5a105e900bba83e03f962e93.tar.gz"

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