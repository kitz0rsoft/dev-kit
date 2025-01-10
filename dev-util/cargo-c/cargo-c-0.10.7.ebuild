# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/19/72/1e/19721ef642129343744c2a3ee4c511423b72463641b9120a65f70460c9a90aa99083706f6a28d7c217cd2d0d242b654aaed746fb9b82c58a645b491c51763a3e -> cargo-c-0.10.7-funtoo-crates-bundle-cf33bde1c915d60ba22055001c30945205f23859d0061e8ab6516b7d6a8226abc27ee04ec0c269861df4eb773a5d35cb03c303aaa11dbaa0e99d3a406c15ea6d.tar.gz"

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