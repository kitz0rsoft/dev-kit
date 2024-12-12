# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/d1c850b2b5d502763520c25fb4a6a1128ad99bd9 -> typos-1.28.3-d1c850b.tar.gz
https://regen.mordor/d5/07/9f/d5079fbcbff6f86996c76e2e3cf77aeee5022b69906d329759026220520a4a6b552c499b059ecb5ab694ddffe4ceb1d284668f67feb42e137ffd674e96b56885 -> typos-1.28.3-funtoo-crates-bundle-0f8ba77ff747dec08c71fdf3182785d2c3dfe37b67807402e7adb3b04ec213d7fe35e5a2d5c20ff2b37c8713fe714ddbef2030d83eaf5877a4bd8454a8c3904c.tar.gz"

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