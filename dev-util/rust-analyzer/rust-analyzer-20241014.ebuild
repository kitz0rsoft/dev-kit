# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/d7628c0a8b95cadefe89d9a45f9be5ee4898c6b1 -> rust-analyzer-20241014-d7628c0.tar.gz
https://regen.mordor/68/34/45/6834451c7e5d26b4ca4b09905cf46375c9f343aac7637e8f01ca1ac80595d226c04f17985da91d8cdbbf942f3e30c08d0f47315161a40b2f297098efd2394224 -> rust-analyzer-20241014-funtoo-crates-bundle-ab754958b4ba0d203979895220097c956f66620ff1a2a2ae1c6a88c4aded640cefbd6fa5523abc95f6133030ccd30018dfdfb60d48a42a71dbeb85d5788b10e3.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND=""
BDEPEND="virtual/rust"

QA_FLAGS_IGNORED="/usr/bin/rust-analyzer"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/rust-lang-rust-analyzer-* ${S} || die
}

# To populate a custom version for rust-analyzer use the CFG_RELEASE environmental variable
# If this is not set rust-analyzer --version will return 0.0.0
# Upstream code reference: https://github.com/rust-lang/rust-analyzer/blob/master/crates/rust-analyzer/src/version.rs
src_install() {
	RUST_VERSION="$(rustc --version | awk {'print $2'})"
	CFG_RELEASE="$RUST_VERSION (-standalone-funtoo)" cargo_src_install --path "./crates/rust-analyzer"
	einstalldocs
}