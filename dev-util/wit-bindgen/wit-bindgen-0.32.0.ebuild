# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A language binding generator for WebAssembly interface types"
HOMEPAGE="https://github.com/bytecodealliance/wit-bindgen"
SRC_URI="https://github.com/bytecodealliance/wit-bindgen/tarball/dea39d07a6282da5cb7ff315802a5593d2962701 -> wit-bindgen-0.32.0-dea39d0.tar.gz
https://regen.mordor/3d/b2/00/3db2007c9100b0f23afb62406e0cc4bffb136ac0d2596851308d84ca1d6226a1791dc07486e032ef5ec4a8c07813a69b15dfa2169c417dcd2c448ffb0a4a8701 -> wit-bindgen-0.32.0-funtoo-crates-bundle-668c048d47ebafc8b80b206572c5603078d9ce5628d32dcd674d12b666cb0e215e16ee54e621d2bfd373436a9461a98a7b298e2a90f623e6d76a5d30c6fdc440.tar.gz"

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