# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/7106cd3be50b2a43c1d9f2787bf22d4369c2b25b -> rust-analyzer-20240826-7106cd3.tar.gz
https://regen.mordor/01/2f/6b/012f6b741f8feba6d454d2f7131e05a64e811092a032d6ba8226e4805281e8aa8be4856dccf7fb2989db5a245e20cec5c78a977d886b17412436ac558972f638 -> rust-analyzer-20240826-funtoo-crates-bundle-542f54717e25025c2a25f7d56027bc4bbf3f009b3d8325dee249332479da911fe28e98b0f15910cc95e7b0adc29910c74ca015db6631f5222378771a833dba7a.tar.gz"

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