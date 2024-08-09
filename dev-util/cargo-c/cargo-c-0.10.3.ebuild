# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/8f/e4/9f/8fe49f5600265f502da1bc251897364045f566ce2d8ed7089e701e01e27a0f5ab2d9bed6a531cf83cb1811923178dacd15ab765b03b70e7d953f831c112ce071 -> cargo-c-0.10.3-funtoo-crates-bundle-60f560409e4f02e2b24fc71892d8200692c0920a4f3ce50db4df61ccfaec3fe06c0c26899f2649c47b3830cf66b5e797e5f10be6bd0b2cbcb9946a4619bf14f4.tar.gz"

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