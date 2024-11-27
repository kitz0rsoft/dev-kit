# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/ba/7c/bc/ba7cbc52a4249f40fc09fff57427ed42e9d12f7f3dd91899661e9783906f76fdb8a9df7378ba2e91a18c17f9742a1a5c4d397de148012a51456a979e3ec5c686 -> cargo-c-0.10.5-funtoo-crates-bundle-1ff3dc2f5c4afe5940b77a30042f01f111c81bd25d3447ba3ecc473803a53aac953dde719242880ba23c68ffa82c3f403437f0d59eba15b302d084806a3e887a.tar.gz"

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