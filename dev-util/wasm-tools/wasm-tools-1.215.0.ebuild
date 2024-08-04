# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION=" CLI and Rust libraries for low-level manipulation of WebAssembly modules "
HOMEPAGE="https://github.com/bytecodealliance/wasm-tools"
SRC_URI="https://github.com/bytecodealliance/wasm-tools/tarball/b2fb997c0f82f05bdcd6f205267f83db672a5bad -> wasm-tools-1.215.0-b2fb997.tar.gz
https://regen.mordor/72/a0/86/72a086d86c717d150002061055871e894f12068a52362ddcf092c62c33c6e1ff4f928811c60a8c840e965f4c20d64edf7bf6bb0f69c3411f9a90198dd4e2b066 -> wasm-tools-1.215.0-funtoo-crates-bundle-4bac7d4e9ab51b0fb0e2bd8f7f1bda7038afd15f45d2db567fea9485bfc837c6ef11ab230a1ae1971291ecb938ef47f0268b48dd504c0098e0c5eb046e17ee72.tar.gz"

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