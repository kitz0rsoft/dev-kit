# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION=" CLI and Rust libraries for low-level manipulation of WebAssembly modules "
HOMEPAGE="https://github.com/bytecodealliance/wasm-tools"
SRC_URI="https://github.com/bytecodealliance/wasm-tools/tarball/95a3882ce1f2c713d63c91e955f358305f846581 -> wasm-tools-1.221.1-95a3882.tar.gz
https://regen.mordor/e8/af/d8/e8afd8b65b8afdaf837309a96417d56e989d0da1259d2c00c1a41d50366e7321f5202b33f51b33753502b3950ca99bae2e750bfbc65316a441715887d095b0db -> wasm-tools-1.221.1-funtoo-crates-bundle-5448c0c2fba3de32ac8661f9b64992ec2f6b726a76237354788fa01eb13abfb99c78734662879de7b9116ec244ccf507073901d163404653179237d80d1d33bb.tar.gz"

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