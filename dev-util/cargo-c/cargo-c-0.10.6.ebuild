# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c027fcf597e10154a8bc55c46182a4c2480d8d25 -> cargo-c-0.10.6-c027fcf.tar.gz
https://regen.mordor/db/f8/40/dbf840bf07197a0da1dcc42adf31df15597bf8ea547c9b6c871f8c981aebc0b8d96f08389dce4cef4c9d129f7608bcabbd3a42c1c1a6040377a05026ea6ea250 -> cargo-c-0.10.6-funtoo-crates-bundle-c66e59d712b4109976d15553c000dddd3c42cd1cdbf64e478ae51719764f5ae94f28bae7b1dc9c33189c579a13e51dcb08d2ee3af49991909b2ea2e23247d27b.tar.gz"

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