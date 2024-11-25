# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/fe/e9/8e/fee98e4005a0f9dd78c1f96497043362412f1271f4f4ad7c39d2664c68831e7c780d9eb956dfb6efa2479a118ed4f7f1540f30675e9f009c5ea98d847599e368 -> cargo-c-0.10.5-funtoo-crates-bundle-d2acac92913826accaa13ab4482c30c736bc3a59d48c59540d71f2f834041a656297477bed24387678783d57ea299eec5ecb5ef15c8c6db78aa628d550b1189a.tar.gz"

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