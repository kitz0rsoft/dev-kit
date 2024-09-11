# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/b9/bf/2c/b9bf2c26f567964a77f66a8ddea1df2bdc4a0d71f5889f94f6024aff66a4d6393f39484a3bb275150d2df609cef0e88bb4a63d269cfb95e7cc3982e287c14471 -> cargo-c-0.10.4-funtoo-crates-bundle-b0f898394c00da2eabacc6939eb788a3ff54f1195df0b42ae4ac86b734967e9c27726c3c8b22cd06ca391bc5819ca521ccb5cd1a66d03cf5ddb4b9394e93dc94.tar.gz"

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