# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/67/42/5e/67425ebb7f78fb4993e3b7fb95d8414e770df4a25dff160d1a23b1a980a4e359af195c3aed8c75fd2eb9f46d17cd04072e83b48bf637f7f62fee536fab61fa8b -> cargo-c-0.10.7-funtoo-crates-bundle-21e7664880d6f2673b21b6dfa221604a7f27437ae2dacc189eb3598f2ac00372c0c5c75a022c880bf9f3688775e5969de0499fef222e2f7bde3ecb9069358e56.tar.gz"

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