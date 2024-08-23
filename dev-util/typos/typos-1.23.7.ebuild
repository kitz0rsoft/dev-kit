# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/cbb98c663b362e22c2b411e82b11beeeeb530349 -> typos-1.23.7-cbb98c6.tar.gz
https://regen.mordor/54/58/df/5458df19f916f7cb765505fa7311fd9f8100096990e700e5b98fa0b1722ca0e7826d9d91b30becfbd26cb6972215485c5edc4a29e51152b0f9d7c8bea5c1477d -> typos-1.23.7-funtoo-crates-bundle-8505e3adb2c68d1fab0e32580d4c980523fab58454fba4a473f11a9a5af018a0079186aaa139d8b5f592e022de930c11c87a8ff98d447ac5f12e8f23b862b415.tar.gz"

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