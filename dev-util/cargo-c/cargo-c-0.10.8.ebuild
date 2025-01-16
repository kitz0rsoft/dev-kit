# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://regen.mordor/50/58/5f/50585fc8950ccac0db0b2cca5811b98ff774e8eac329757e763a9de6cb1cd8953bc3f5ec9b8dc9907d201376b3e1cc8a4a30022f131ceacc6c5ad2afdb599ec7 -> cargo-c-0.10.8-funtoo-crates-bundle-881126e61114cb93ebcfdf8491fbb625b61320208a0805ca11824118dbed71c6ad8e84a0315c8146f606889fccdc1edb415ce86278334497ead8d2a7b4f81173.tar.gz"

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