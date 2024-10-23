# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/963c545f6b32b8572104c43605e663e84adbb9fb -> typos-1.26.1-963c545.tar.gz
https://regen.mordor/5b/80/10/5b8010bc6b44bb504bffe1157e338b7094b22eff84312ee98246c1a29cf0fa960553def2600b4b2af7829c6828f130d4c3fea5bf7fe9f09af1e2d65c08c4398b -> typos-1.26.1-funtoo-crates-bundle-1b78e0129f38600d694dc9e1aff7bf7b3ecbef9c1c3230cdb783754bd0901d6342d67652388635e52e11c1d0e5077a4eb22a9fbfcaf0ca66e00f5ea21549c60f.tar.gz"

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