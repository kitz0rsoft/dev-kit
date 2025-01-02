# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/752bd034d6d0b6fcb6421c73a3789161e0cdf70a -> typos-1.29.3-752bd03.tar.gz
https://regen.mordor/11/a2/57/11a2578649d3889fd7163958acfda4a5b4ecf3c4491068d54efa449f2d77dcf44b6de75cb9322d56cc6640655e66a814ff795be83eff942a22e6577e5e951cbb -> typos-1.29.3-funtoo-crates-bundle-2989a52f2de8fbca2a13d7a4245592f2df4043b4f2e778982b45d0894785ec3093ff50c438c3e05998f09a81097ae59bf3ed927599e37afdfbdb2e455b149ee4.tar.gz"

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