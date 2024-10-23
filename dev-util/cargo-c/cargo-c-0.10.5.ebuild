# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/8a/7a/36/8a7a3669f1d62fb87721bc20230dbf4e6f9c91e697974519eb485371639545a70414105771714bb9a3e2a25a3f1b2e32192c710934bcdae00dba509c98910118 -> cargo-c-0.10.5-funtoo-crates-bundle-50d7efc53203af502264e6f4c72db9c8456f4418e1f464dd308755cff1dac5ebb0d7af3aee24c4085f64af41e344c6d7e7f4b6c579718185d72233e0396e54ae.tar.gz"

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