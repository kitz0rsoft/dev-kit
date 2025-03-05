# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION=" CLI and Rust libraries for low-level manipulation of WebAssembly modules "
HOMEPAGE="https://github.com/bytecodealliance/wasm-tools"
SRC_URI="https://github.com/bytecodealliance/wasm-tools/tarball/2f3b2f9ef705db8bc768047607cd7f1e39c99b20 -> wasm-tools-1.227.0-2f3b2f9.tar.gz
https://regen.mordor/9c/ef/9a/9cef9acaa3d6ca8a5831e9266dcb0d9bd1b1764c18d45d75e37eed50ef643717ad081f611c60f533df31607f5330f94b490fffc9630059a08d946b65011541c1 -> wasm-tools-1.227.0-funtoo-crates-bundle-72fcbaa4b77cad492e08c0a04c6a7112feff0e0ee8136159967badf7696b4c32f636203e546f4087a125cc18fd955133558bf9305bb3c81dad4da6f8ace7b818.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DOCS=( README.md )

QA_FLAGS_IGNORED="/usr/bin/wasm-tools"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/bytecodealliance-wasm-tools-* ${S} || die
}

src_install() {
	cargo_src_install
	einstalldocs
}