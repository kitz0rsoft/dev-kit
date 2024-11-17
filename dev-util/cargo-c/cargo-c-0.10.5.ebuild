# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/2c/52/90/2c5290b1d0e3c18f5ef8c3bca0122d4c44293ae36e54e0baee8f2fedaa9e287a72622adf562cc09150809d0abd0b7292caaad8691d0b95bee1484da525677d8a -> cargo-c-0.10.5-funtoo-crates-bundle-853a9377aa0a51c728b93fd6b08d2e318b574ed0734be8184e4a3697480f725c4315b6f5b683ce028d57c65e54b78a8107c329b68e098d82850f0eb8df0bebf9.tar.gz"

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