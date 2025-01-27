# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/09/49/b1/0949b153743937e2b858b5f894df77df1a660a4ef6d4d2de911431d4017854b830f93e5a59b6d7925c301765b586c2a0cebf4fe861a7000268b0e58d2c3c77a8 -> cargo-c-0.10.9-funtoo-crates-bundle-7b935567e04f2ccb5b1aad877af39b260ce27a25c45cfae33112f8225ba80865cbfbd810147a4b2b63db0c789b48a8a65611a788063190340583c4fb4b0d2c5c.tar.gz"

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