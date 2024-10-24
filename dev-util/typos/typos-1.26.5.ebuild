# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/afbc96c5d3760227ecd31b4ed5f80415beeaaa86 -> typos-1.26.5-afbc96c.tar.gz
https://regen.mordor/c2/91/ee/c291ee7671dd673903303294580583fd7c2e156f9e5b15c41157ee63863c750b49c852477b0a33716c7d9e44802a90f2693b1cabdf29d0dfe67a7a93c6b3dcf1 -> typos-1.26.5-funtoo-crates-bundle-1b78e0129f38600d694dc9e1aff7bf7b3ecbef9c1c3230cdb783754bd0901d6342d67652388635e52e11c1d0e5077a4eb22a9fbfcaf0ca66e00f5ea21549c60f.tar.gz"

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