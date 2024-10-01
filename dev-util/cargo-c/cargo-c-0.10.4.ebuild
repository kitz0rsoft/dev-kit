# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/74/31/bb/7431bbbddbdf04f0019f8e382bef3cf892ee796e1a1839fe44ee50ebb70547d50b2f33f965342858fee61e05b0771f3cfc34ca05c2560e52f40231eb7eeb60d0 -> cargo-c-0.10.4-funtoo-crates-bundle-3c54f842f434fdbea25da7e797c8dd62753bc1bffa4158c9114389e130bbd38de7f06fc14d491d240f852b217625ed005a882c99a45241852210799c0788b900.tar.gz"

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