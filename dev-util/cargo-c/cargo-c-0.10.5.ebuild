# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/ac/61/0b/ac610bf50a78068fb69e16ffcaa4bdcaa19991515629ecb4864bd6817c0ab3505e31dc7b719b1f59858477a5153b578208a097989a343993bca1c36c943ba108 -> cargo-c-0.10.5-funtoo-crates-bundle-11a2fe180338f675ebc349b429331bb83f71c571d16f772dd4b41c99d656c2ad6ea989836cb6d7fcc411c2c77741a30132930a0e7f34d1073b85346c86cfc24c.tar.gz"

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