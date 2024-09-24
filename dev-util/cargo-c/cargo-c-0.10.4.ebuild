# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/ef/11/41/ef114138538f2fabdead1614e89f982793a584761d44b554fc093b102b7d4a78c4b2a9307170803d055c20f5bee4deaedce89a014f7ac3bfaf1b15f0633fd6ee -> cargo-c-0.10.4-funtoo-crates-bundle-58e8ade6662806fa638daad84444f43785ddbcc9cd661bb0f1951a25d2427233cb522b633feca8d8b4e0dbfb95612f39176b9c2c66520e5d307307909ba87357.tar.gz"

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