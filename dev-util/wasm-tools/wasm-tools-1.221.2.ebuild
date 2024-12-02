# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION=" CLI and Rust libraries for low-level manipulation of WebAssembly modules "
HOMEPAGE="https://github.com/bytecodealliance/wasm-tools"
SRC_URI="https://github.com/bytecodealliance/wasm-tools/tarball/549c283b2e14c4eba75daa35573b71cdcc110c5d -> wasm-tools-1.221.2-549c283.tar.gz
https://regen.mordor/f4/1c/e4/f41ce47f7c1de6c25da3becf638fc67743482b76943d70b071042eeca4dcd849e7bacc5638df2f61737aaff25fdad1211fbc7b4832d0b0931d9e1e1fa20e3518 -> wasm-tools-1.221.2-funtoo-crates-bundle-5448c0c2fba3de32ac8661f9b64992ec2f6b726a76237354788fa01eb13abfb99c78734662879de7b9116ec244ccf507073901d163404653179237d80d1d33bb.tar.gz"

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