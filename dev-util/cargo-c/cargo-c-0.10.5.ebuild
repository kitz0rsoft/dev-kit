# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/ba/76/2b/ba762b86a66d4b08d18cdf48b7f378eaf5e576416b7f14123f119d37b941e708eaf9b5462b0e4cfc8d8111494ed2f552b04322960ebf686badaf1949d2a97f2b -> cargo-c-0.10.5-funtoo-crates-bundle-958b1f3d7adc4ab82afd4991f02205ad1912aeddccb6d08e9310d058b7c5ba531c788fea7a3829c440901f411e0b29947bde924d7f55680f0b0fa69a9031cd47.tar.gz"

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