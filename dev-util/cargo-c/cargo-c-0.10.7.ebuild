# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/51/48/4d/51484d34079c6906e2fc3b81f2b80c74b3907a241abcfd8502c0102f0ddcc0d7aee49c4800ff5c1a0ae5f3835d98172b9896eafa332b41f01e2a208086a55ae8 -> cargo-c-0.10.7-funtoo-crates-bundle-407ed45626956b4661a4354aad7c0c2e128bc0301caa62c9da7805ae3a4da53ecc6fa203de33abd6f670924139707ade16d02a7aef5bb731dd934fc858a48842.tar.gz"

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