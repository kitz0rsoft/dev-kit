# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/db35ee91e80fbb447f33b0e5fbddb24d2a1a884f -> typos-1.29.10-db35ee9.tar.gz
https://regen.mordor/56/3b/cf/563bcf194b10e61008a932a1b0f21da4d4d94532ecc3b38fa9eb8e42cab0f91da40250e4cf0c154a5f44600723f588f402c115941c9770b1dc0937e86c6d2a85 -> typos-1.29.10-funtoo-crates-bundle-e88ff7b5d21442d552de79d655135b739859c092180539e2ffcafee2b3a9a20be5b1b0238b1c41dfe7de7d90214695fccb39274490290ecaabe6dd2f9b5b8b3b.tar.gz"

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