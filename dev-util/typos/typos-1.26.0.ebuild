# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/6802cc60d4e7f78b9d5454f6cf3935c042d5e1e3 -> typos-1.26.0-6802cc6.tar.gz
https://regen.mordor/0d/95/b6/0d95b6af46ac54d13993e0a422f3f535a9afdaa0abecb7b79e61d55959a2ff3e4207d6e876a3a81a2790d677792d43876ce67b97103c1b8780f43716a160d336 -> typos-1.26.0-funtoo-crates-bundle-1b78e0129f38600d694dc9e1aff7bf7b3ecbef9c1c3230cdb783754bd0901d6342d67652388635e52e11c1d0e5077a4eb22a9fbfcaf0ca66e00f5ea21549c60f.tar.gz"

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