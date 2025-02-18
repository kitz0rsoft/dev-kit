# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A language binding generator for WebAssembly interface types"
HOMEPAGE="https://github.com/bytecodealliance/wit-bindgen"
SRC_URI="https://github.com/bytecodealliance/wit-bindgen/tarball/f2393e6e98fa5f9236cac580db8a3fc9de6a4b70 -> wit-bindgen-0.39.0-f2393e6.tar.gz
https://regen.mordor/8e/5d/68/8e5d688f88130607bde276a157724e58f73b34d3e770da322023f3edbecb2d2876fda597ffc6e996b8c79a88ff37a9b8fe6a2beffb100904063c787619cace24 -> wit-bindgen-0.39.0-funtoo-crates-bundle-03d4556439785ef4d07f366304daf24921802ce0127b93ef513031baa6ee4e6ee111245b7a04f59019e7c322049380836c381a2c3bccb5c6a7bfcdd429e08820.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DOCS=( README.md )

QA_FLAGS_IGNORED="/usr/bin/wit-bindgen"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/bytecodealliance-wit-bindgen-* ${S} || die
}

src_install() {
	cargo_src_install
	einstalldocs
}