# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/66/f7/7a/66f77a30b622e5a48f1295720d156db759e6a91a7d00a42ad0872818bbdca7ccef7fd629d0564c820825f3b374313873dc28df1c59d2ffcafca5f5defef5c2c4 -> cargo-c-0.10.11-funtoo-crates-bundle-be86831f8c2279f53744e5e1f9bf6c61c8d84f2831c8f9eac73625fa12b8257a46d9653126c7754a1724205b774cd7d0488d2a76fd2f74d369bbb005132350f7.tar.gz"

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