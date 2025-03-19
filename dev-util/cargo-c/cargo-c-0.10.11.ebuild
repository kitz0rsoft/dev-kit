# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/a3/5a/16/a35a168aa8a12aa566481cb456540dd3b5f24e4318b697b792803250303b1b6063455159371051f7322a19527058771a957abd3eda3fefd63eff4f4a630d679a -> cargo-c-0.10.11-funtoo-crates-bundle-4655200b62417cc9c133883b6c68f644f7530f5a3a78c6c95ec3ba7016e2212f5e4788fc6a055ef80de2c360b39c51c861c26463f9a9671c8390f5b0a533d51f.tar.gz"

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