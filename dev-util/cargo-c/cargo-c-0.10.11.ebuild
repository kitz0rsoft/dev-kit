# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/21/e4/fa/21e4fa21704a1cc4e3afa3000bc7efdac574af8aa398595481775309e4c5a7ce0ac634fda1b31d4cd73d58e837a4f862671074c94ecbe2b2ffeb5fc8fb53778a -> cargo-c-0.10.11-funtoo-crates-bundle-fb19e4d945b81d3c44bac98a38dc185bb21ec343690137939de34cefe90ea324ca90c8755af59feb20fdb60a41dafac9fa99da37cc96f80a003073c138fa46b6.tar.gz"

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