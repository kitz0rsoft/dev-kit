# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/94/23/69/942369f261a47a9c5c9e347f47359a8da28279366486d6451d87895b6245d270ef6fff47774d2e336ecd327bdf64e1932f0c82190596d1ca89d5ea9e6ccc91e3 -> cargo-c-0.10.5-funtoo-crates-bundle-ce3cc6cb373e4b72ede3832d96e1c9603e09466298ac1adc9dc4e3e5d39ad205d53e17bee9785d3e2a7487e388e25b34fa3c45de0efbd759ce538079942329d9.tar.gz"

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