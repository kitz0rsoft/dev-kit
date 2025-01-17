# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://regen.mordor/8e/1b/1c/8e1b1cee89488d9d69ecc3a1fbfc7049a4527e995a149d020300a309f12c0d89334867d07f1eee9443f1656f3c7e9b9cdd10a4f5e00ddfb8130cbd7a8e16e23a -> cargo-c-0.10.8-funtoo-crates-bundle-8937fd9428574a411943715d34383f1e4ba96bd853b1c4d3094cddb37ee9888e6efc4f498b4022867369e5d72748c23ef8c3e35408f770211bb049194d808ef2.tar.gz"

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