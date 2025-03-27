# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/7e/81/9e/7e819e4a23d652000a3ac4bb7d7b1708f9f372926b6439064fa6474ecd7678d610c04b5afd78ddfd533bd965689cc62f7180a04933501a8ca1071c1669c65b82 -> cargo-c-0.10.11-funtoo-crates-bundle-04210f45d4d0852772b606071185503249e0cc3e7390d931cfb02e2dbaa781f6db2071fe217be8cefbf447d0bc2ddcb631296c9c3ced28d7ce3ef4e4ddfc24cd.tar.gz"

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