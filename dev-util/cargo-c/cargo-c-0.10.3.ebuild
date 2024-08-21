# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/b3/5c/c2/b35cc234fd3b8ba0dc75953af6eb31b2c21bacabe82c484eb2fc109a90a187ba92519fe50f69ced10edb248a8c486830757def1a4ae8ec620087b7eeaeaf7dc9 -> cargo-c-0.10.3-funtoo-crates-bundle-c56d9926dfabb15f2cc7877551f8b913792e6b0fe799eb3bd514fd56139cb9363c6904ca652c995437225cccdbc4289fc782e1473ac373b1021b39d9f3ebde6a.tar.gz"

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