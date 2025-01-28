# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/c5/43/d6/c543d62618e4088d27303479c11e359438e818b0d5a33135dc209a3e835348e6260452b53c8d6d905e69a81b450aaecaaafbb2c33d03bf177c2db860ed2ba188 -> cargo-c-0.10.9-funtoo-crates-bundle-6840430aa1f57c171df2e83a52d4190d1155c1cf8cd15ff1bca87620810b4e23fa930ec4db9027284587873d1f553203b5baa1fdd51938b8cd263956edd3c755.tar.gz"

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