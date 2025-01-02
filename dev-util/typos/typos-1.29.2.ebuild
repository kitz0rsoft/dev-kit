# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/3828d077344fec8756ba75d52cba16613f940877 -> typos-1.29.2-3828d07.tar.gz
https://regen.mordor/aa/d9/de/aad9de7fde86d1b15d6faf68cee36eebf8671f5e902c810baa763fa1831952995127bcfb47eb28b76c881a42465f7360156cdde44e134037756ceee713880bd7 -> typos-1.29.2-funtoo-crates-bundle-2989a52f2de8fbca2a13d7a4245592f2df4043b4f2e778982b45d0894785ec3093ff50c438c3e05998f09a81097ae59bf3ed927599e37afdfbdb2e455b149ee4.tar.gz"

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