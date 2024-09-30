# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/56/b3/07/56b3071ff1ee5ffa0d09b5464f14ce04bc39e7ac046da5772fd77689618175e2bb43d29de4cd2433151070b2af61ccac0bb5cf036732ce1de5618a002bb2bcb8 -> cargo-c-0.10.4-funtoo-crates-bundle-1af0035cf9677f1e5ea49a7f7a62b2889cf0b3ca00b636f930a254ed4d3193fb889f108195980e20ba8378a60d099bf87f02a4e6d4d179456a1890ec4a5a07b7.tar.gz"

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