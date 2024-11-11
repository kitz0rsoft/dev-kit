# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/99/e3/9c/99e39c69ac4936fdadbc61bcedaf865c114d3a78bd1f3b0b6a5e93ce24352b520de6d879e19f140198712cea043f9dc77db1c1127f62a2da1c5f90b53c02d1bd -> cargo-c-0.10.5-funtoo-crates-bundle-93253b133ebde95d3c1e372df87f1241bd9a93a3671a0f9882be042e04dd57a28cc0e9f30117e5de96181bc3863b9015458aec21696c38fe4fba27d3e1469131.tar.gz"

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