# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/60/ed/80/60ed80d3eada897f0a38cf4afe8f890057d30498493038cbd5f65b8b742677a693322c178156583b40f2335bcff6aa26dc2fe859c23694b9262e5d4b6d46518e -> cargo-c-0.10.11-funtoo-crates-bundle-fac3cf2836e7f02e2c6853b8c7c85a12ef48fdafa4c49969a67e3973201f3233f140a15240978317501b812c34b5de2a5f3f749d778fd17c0e7e6ac48b6dda96.tar.gz"

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