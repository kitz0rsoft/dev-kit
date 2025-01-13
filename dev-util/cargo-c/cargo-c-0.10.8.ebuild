# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://regen.mordor/b3/1b/22/b31b227d006ddc9e96ff63f02c7b7ff65735d2f7d0b074afbc6675e62d947f7fd2a142e334a3930050530e7c293875fa59a103825397d40f39e0546aac294802 -> cargo-c-0.10.8-funtoo-crates-bundle-cad6cddc88bf47151376c06e19c8baecaa5204890a066dc30c428d5509613a742635548dce65c52ca33acc0aaed54334678b1a7a6b399711b5b9660855e90f14.tar.gz"

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