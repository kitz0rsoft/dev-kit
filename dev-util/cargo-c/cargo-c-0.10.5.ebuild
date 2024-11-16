# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/93/a7/db/93a7dbc9c9474645625319a346c2b2b68c2a18d3f02fba93c8da6c10e3259be9de6669444652596720628cf9e6fe33171224599c1b2c835a681404415037994f -> cargo-c-0.10.5-funtoo-crates-bundle-8109413b9985ff4b5d5041d3aa98e5484cc275229e64f39894cfd52e127ba651868c031dd292f5a759a2996820d6c2247289ef83cb478544f54cc44d976f24bb.tar.gz"

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