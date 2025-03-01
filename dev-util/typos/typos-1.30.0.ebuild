# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/8951ef9cb569c860bc8f3f18070fbfaf65cdb349 -> typos-1.30.0-8951ef9.tar.gz
https://regen.mordor/f4/6e/e3/f46ee34a968d2f5e56dd7de6f4f5b6eb97f60f3527153617a7e349a7ff4f012d785994967796049455af2ae21f18d352a336cb727e4c6900d6576d354b03d99e -> typos-1.30.0-funtoo-crates-bundle-7962195f997cd7e63671493b8582e1c28dc892c723240f7e37706c9b023cc268222af8c90cbb52830c5df7fa5a679f59c75ac77506c3dea425c78ffca3d04a86.tar.gz"

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