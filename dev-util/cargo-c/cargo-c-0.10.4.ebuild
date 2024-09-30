# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/9f/ea/42/9fea426a16e064ebb9d48da93252066d8d8a626a1131feff8d2798de6259c9832401d03f97b4e8080ac855944e405087fe961b654893d0a703ca7efd7d3b5155 -> cargo-c-0.10.4-funtoo-crates-bundle-624c252a81a9b1587f2a3560a8034b7a4c1e84f53ec2a3f7730c05d40fd9891ee24d2fe7a2b5d93ce146ad8a013e634a93cae8d5b5b81ba471d6eeb2a3d09b15.tar.gz"

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