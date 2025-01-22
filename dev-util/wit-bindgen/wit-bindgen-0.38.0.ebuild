# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A language binding generator for WebAssembly interface types"
HOMEPAGE="https://github.com/bytecodealliance/wit-bindgen"
SRC_URI="https://github.com/bytecodealliance/wit-bindgen/tarball/953b183f67c6d556a22692b4514916aa3d0af393 -> wit-bindgen-0.38.0-953b183.tar.gz
https://regen.mordor/b8/50/ef/b850ef815c206f00ef6727351e2b03a543c96aadde6860696816200788afef1237c49fd151af275de6659587b411568543d4a698de11efc717fddec84ba4b8d9 -> wit-bindgen-0.38.0-funtoo-crates-bundle-c2b7b2925e8d0905b2aa0005ca07ecb199825731b8c8416b509a8d33fe91797a7063ef229e15dca269bc3a22f39afe66754030253a5fc38000a9735b7e7e527a.tar.gz"

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