# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c027fcf597e10154a8bc55c46182a4c2480d8d25 -> cargo-c-0.10.6-c027fcf.tar.gz
https://regen.mordor/e9/90/ce/e990cedcb48c477c803475c89ed83b50c15db53693d3ba74a772d43df7107c10dc24c753ad8a2badafc60d2d8881660c7edbd14d3d5fc2b7996716ec042dc9dd -> cargo-c-0.10.6-funtoo-crates-bundle-76d3ac15d0693877a5a80c2dadeba66c214e7643c6c10a03e784203d67b4c90397653ed96ff76f51e5c6144f8ee415d3646749b49f375287b9f7071acb3966ad.tar.gz"

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