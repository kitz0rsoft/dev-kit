# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/fb/55/35/fb5535bb84508a3161ecefd486b042b166979c25cec72da6b67b381fe9c116411bd5386fa0bc0bd7838b20b99566ec579198542abdbd4b0e47d2b5f9c1b47f11 -> cargo-c-0.10.5-funtoo-crates-bundle-1de41099334673aa08ac57df5d79d2df2dedfd0b785c31242572561eeacb05078b771bbd46299e6044474b39b3559e499ca945aacd7abf7676146d72947d6e75.tar.gz"

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