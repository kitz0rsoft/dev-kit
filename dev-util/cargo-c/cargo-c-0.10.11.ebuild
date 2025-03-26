# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/b1/c2/14/b1c214644125b975d3927408788f4250d765b8872fbd8766ffe3a9fd77fb111f9973804883943de629a23fc2b12d0836f4bbe2c4cff2a9a379c7a8353f8289ec -> cargo-c-0.10.11-funtoo-crates-bundle-f4c7b4d43d0504c3b73fcfd25c64c80077e47ccef453f424ce884658dd72778fef3d4f6e8f540b914775ca9c595e3db1939e0e5721d06e9e65ef60e3c8d91f90.tar.gz"

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