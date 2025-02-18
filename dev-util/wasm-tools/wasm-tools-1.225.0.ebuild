# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION=" CLI and Rust libraries for low-level manipulation of WebAssembly modules "
HOMEPAGE="https://github.com/bytecodealliance/wasm-tools"
SRC_URI="https://github.com/bytecodealliance/wasm-tools/tarball/6a44095585f44da2adf63964701748bcef7be6e9 -> wasm-tools-1.225.0-6a44095.tar.gz
https://regen.mordor/1f/33/74/1f3374e8c542adb8bd0a20f98e4c65784a64069fb2ae473003da8f255d8c611d39b4825d1f3c8bbe44d91616540bdd61d5b7fd97f2caaf115477db9c2d3d45ed -> wasm-tools-1.225.0-funtoo-crates-bundle-c6e57fbec56d7fcfea198be8a5806f60def1838b0780a4d340f4219cb17f54e817ad06a5b9ca3d344b9ddd9c8c451681751e2b455f0c494d73a56929081dccb5.tar.gz"

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