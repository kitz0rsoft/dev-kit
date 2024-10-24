# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/4ba8712927a99a5b2011bf10148ba2fb3a518a59 -> typos-1.26.3-4ba8712.tar.gz
https://regen.mordor/66/50/f6/6650f6c892b1328c12163f76510355e26a745be4351b7fd1e5cad26b0eb80cb8c2e27477fcff44fbfeff463e99a936b865a371aa50753e9b85a022851727ff14 -> typos-1.26.3-funtoo-crates-bundle-1b78e0129f38600d694dc9e1aff7bf7b3ecbef9c1c3230cdb783754bd0901d6342d67652388635e52e11c1d0e5077a4eb22a9fbfcaf0ca66e00f5ea21549c60f.tar.gz"

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