# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/a7/6d/b0/a76db0e6f601709b1c76c02e1f2beddcfcae50c90073c7813fb06296dffaa0582c1a1f4f317bc800ff7fc44370f5a9449af75962fff4ac6ea0a0dbe9976adf33 -> cargo-c-0.10.7-funtoo-crates-bundle-9b26f9c391d127ad52626b5dce54ca53629027289d9ea24875f288af7ef2dfa7e40cb55719bbae5aa23325beb46abb58fe6d2175e303b4553d400e5cc787c95b.tar.gz"

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