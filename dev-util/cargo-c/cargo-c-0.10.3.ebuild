# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/e4/ec/3d/e4ec3dc02f42a25ebf57f4c789064ed88a32e780fa940b8dc3a09f1f2c2c11438a517f03b48ccd8a835295f135e1f3a6c3442bd3efc4ee151ded4ad4c85ce3a3 -> cargo-c-0.10.3-funtoo-crates-bundle-8889f812268b133ab5dab5dd25cc5e462db662f5bd06d5e0716382e5693d221a82aff3d888bf04f0f623b15e988c4755dd9c00e5e6f097d71c7c9ff2cb0da8f1.tar.gz"

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