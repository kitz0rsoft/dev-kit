# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/ce/be/c2/cebec2314928b34f0faf0de9c3516beaebc2e088f08657d7d15d15fb72994f258714ba9ae25a66c9d60505efab3d2dbee7ee55ac6f2dd4d4e4e4005c94e64f7f -> cargo-c-0.10.11-funtoo-crates-bundle-9055467887bf98de71b94b0d68fb8cd64a4c75c632be9c1ef81d4ec0ee6c587b214bf2b301d4e388e62c92a320a55e247dcd842ed15a887b19d5ad33a5143eb6.tar.gz"

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