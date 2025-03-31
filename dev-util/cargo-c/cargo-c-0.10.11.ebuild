# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/15/89/78/15897860487ea1d68a39ed1338769e8edc5e157faba3a7be92317a503dc512f57ab76069a479512e2a1631be5332d36d348cf4f4dbe4b875cdd69cea64afb673 -> cargo-c-0.10.11-funtoo-crates-bundle-caaa52ee9a29e6921dbcc4d8bcd5cc25acad94f5ec866cc67b4ea96c1622c0eafe80fa83124f9fb18a090002f58504934e1f8be5fe7a2fddee5e0e6e9434636b.tar.gz"

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