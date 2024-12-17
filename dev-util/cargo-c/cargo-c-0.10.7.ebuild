# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/b1/5f/fd/b15ffdab3042108e90a0f72706826f72af6c62e151ca360e6868d3c8a4710dd7348f2898a122db36f57c93e10ed6ff3c6ec8adbdf9c9317a7c3fa4342361e575 -> cargo-c-0.10.7-funtoo-crates-bundle-d3b9a9f47048d616f9aa08c1baad5cc6ba92eced86a50e821a242589a88ca87b73d1ab9952574c867d7dee16ddcb5fcd9709cc239e4c5dac56bbb68076aba750.tar.gz"

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