# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/c3/ba/7c/c3ba7c4ca606815dec200f374b36b420cd6732b118ee989bb07582de33d4f6d5bfa39d2da7844ad74419016a69c8f1e11c72a27c563e68ed180c3fc9f970096a -> cargo-c-0.10.9-funtoo-crates-bundle-cd36f08abd96e541e2ce48681164a4d4e1a35d94103bc843be22aa9e26b814bcb24366eeeb321cdb378f57aa806d1fc78834ed58f671d460c3d6c44afc0f95f4.tar.gz"

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