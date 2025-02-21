# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/39/17/a6/3917a635b2ec7f9322487814d0af793cd0ce369ef03071b721b9ae178c9a74242fe996c8b9f92633a24a94879830b80c511bd215730d4c54f239c82fcfebe2cb -> cargo-c-0.10.9-funtoo-crates-bundle-cfed68a2caeef97c801ce86fa09b4e1ff1fab7a62960722c703b21a50de09d5ab32c06a7fdd7c3fa5f7a9e2a88926c453d39625cd8fbfa13fbf8b24c8deaf4b4.tar.gz"

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