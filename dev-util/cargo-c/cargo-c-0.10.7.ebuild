# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/25/32/ad/2532adcd3d057ffd9af68eeee09f8ae1d6a6b09e319ab90bae55e4ce103b437b557a459b48e57565dcce38d47e3849a85c8a23a1e45f1a8367a171f5bb608797 -> cargo-c-0.10.7-funtoo-crates-bundle-41900bf3ed0a8d6611423169a3481a44e05c90fa8aa664e4d48ff7552b4bcc2b51dbe565a5023eaf811983e0429fec95631b79515ecae9e74810affc45f9eecd.tar.gz"

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