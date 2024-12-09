# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/4d/d3/74/4dd3740c51c6d2133dc31448e7da638e42f3093f7de3d7600b1d1c348bd32d8d03ec79df3748ee78438cbf30120300f6c42bfcc2f81f0649bbc3b785f4bfa099 -> cargo-c-0.10.7-funtoo-crates-bundle-0ecac3dd9dc177c05535e2e4e042300224d8e7f6737d1d0fd68605246246968f8aceb403d437341c14a4fce3d11e8fdb283a91527459f9a9c54648feb4762adf.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND="sys-libs/zlib
	dev-libs/openssl:0=
	dev-vcs/git
	net-misc/curl[ssl]
"
BDEPEND="virtual/rust"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/lu-zero-cargo-c-* ${S} || die
}