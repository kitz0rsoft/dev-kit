# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/8b/f2/f3/8bf2f3f4b6ad351025d32b1f93e2e552b269e092f28eb346fbf621ae15e361cbde8881dcef479d4436ce1535cd2634ce1ae0484ae41c5e3dd2bb8b4acea3602d -> cargo-c-0.10.3-funtoo-crates-bundle-031e102a8ccd3203a24082e5ce16957bcd2f0cd9186b9b09b63166abcb2a48ec5bf5e965b7d9f89280e785dbd6b4096c61355040d3393de3d3ba78c62d450dd2.tar.gz"

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