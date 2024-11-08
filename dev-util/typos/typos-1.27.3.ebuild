# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/b74202f74b4346efdbce7801d187ec57b266bac8 -> typos-1.27.3-b74202f.tar.gz
https://regen.mordor/bc/57/f6/bc57f6eacd2f68b55e05556f1207e07466d0d0d0c06fc4a278cf3f090b22740b3db46a37b795baa5148c05ebdc6aaaac9de787bf116574d80ec51aabe6b4e609 -> typos-1.27.3-funtoo-crates-bundle-1dd2d6fb3571cd07a0aeb66128baf69a493d525a88a668cbec5d7f0bd24e2568b1ed7dc9976c32df0b79cfb4973222a6f60c9784533894660fa5d0b120865455.tar.gz"

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