# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A language binding generator for WebAssembly interface types"
HOMEPAGE="https://github.com/bytecodealliance/wit-bindgen"
SRC_URI="https://github.com/bytecodealliance/wit-bindgen/tarball/d8994a329a74f6eb96c080b42765e42af6ef5be6 -> wit-bindgen-0.41.0-d8994a3.tar.gz
https://regen.mordor/22/87/e3/2287e378af253f5638aab255a047f4cbdd6429c3aa4ecf91a409986c06eedaf370350f4b143d3320eb3a09dd0dfc6908e8d387ea18094f8eea18f45956e439be -> wit-bindgen-0.41.0-funtoo-crates-bundle-76170d73bcf7362167a98218e1287c9a4f60b2025cc1de44900410f6cb124a3f7c3edac4ae84457ed0117f7340031dff26655b1c48cfbff4e141b93d7eeb8468.tar.gz"

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