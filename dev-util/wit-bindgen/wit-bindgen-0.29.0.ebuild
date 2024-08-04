# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A language binding generator for WebAssembly interface types"
HOMEPAGE="https://github.com/bytecodealliance/wit-bindgen"
SRC_URI="https://github.com/bytecodealliance/wit-bindgen/tarball/a20a9497019fc6ad7c7d6f10d1a6dae8c127a392 -> wit-bindgen-0.29.0-a20a949.tar.gz
https://regen.mordor/9d/63/ea/9d63eabf6457f1e754b5023a49fad91419b3a81090091672dc705ab89f7102c6bc5a8d4189bab9e72135801eef8ca8de8432f66b95af318701b1210e789b9039 -> wit-bindgen-0.29.0-funtoo-crates-bundle-78e0747f7ade9cbaf97cd9358dcb31489b907b73a70df6c688a334700b649f32596c15b1ad4445f7529523ec6fe9376566603f66bc1d201a66a3f53a8ea27c0d.tar.gz"

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