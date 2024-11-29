# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/a7/ef/a9/a7efa943f118bd8035811d08bfb9152d106d3a97b93eac8988f35c65612c952642069efbd6017470555e91f99c3da2c8a83a7815472bd77d5178a1cdc7027b10 -> cargo-c-0.10.7-funtoo-crates-bundle-85618be6df4ea35d8f5db5229a0a7718989f94c4c9d1ed3ee311f47e7954d4f8e56944f438ccff39e1bac947c4ff9fd4a40800f7305c132810a2c7648b11f27f.tar.gz"

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