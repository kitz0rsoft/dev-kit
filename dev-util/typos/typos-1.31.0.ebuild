# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/718c4ff697435edabd4f1c52c3775521adbb33a3 -> typos-1.31.0-718c4ff.tar.gz
https://regen.mordor/bd/3f/21/bd3f2163381d93e6dde46131a45ed619e97a461f8d30972a7a5bec7dd5814b6e129904add1a6536db8a0b618c646091058c80028a8f5b665b26dcc5ae332d10b -> typos-1.31.0-funtoo-crates-bundle-64dae1098dbe729ea54f3f6eb30d8553ab97c6a3e57ac91ba7cd2c54bed7aba3014cadc127b0c836ed22d142025e51f116d370d73bcbe7c8e1970ded00cf24d9.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND=""
BDEPEND="virtual/rust"

QA_FLAGS_IGNORED="/usr/bin/typos"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/crate-ci-typos-* ${S} || die
}

src_install() {
	exeinto /usr/bin
	doexe target/release/typos

	local DOCS=(
	docs/design.md
	docs/reference.md
	CHANGELOG.md README.md
	)
	einstalldocs
}