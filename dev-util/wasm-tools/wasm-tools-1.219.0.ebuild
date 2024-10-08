# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION=" CLI and Rust libraries for low-level manipulation of WebAssembly modules "
HOMEPAGE="https://github.com/bytecodealliance/wasm-tools"
SRC_URI="https://github.com/bytecodealliance/wasm-tools/tarball/0261534e96012f4e82c0d9f83b65be8d91d4fbac -> wasm-tools-1.219.0-0261534.tar.gz
https://regen.mordor/77/55/34/775534130b1835bbd57e7693543d02b446d99c64e41bbc5438f53de134c847d5d09fbe27d2be6a6261d8f19d5c53c0363d4ea234d2ec5929b32ad3d89384b832 -> wasm-tools-1.219.0-funtoo-crates-bundle-3c4f547a8f6df7258724f633373008cad2794d8c068db67b80b1b9e59a57c84c3b21e5b1c9c6926e9de4ec74aa808e65d15b67a7a6d19d74ed040fc4cdfb39bf.tar.gz"

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