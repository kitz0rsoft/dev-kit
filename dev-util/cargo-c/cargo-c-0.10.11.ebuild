# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/30/dd/2b/30dd2b5238e1c8bbe97a2527601e8a0e9e7c4a77f852686f9e93b8c496cd07094124d98959af2fefc362e9dc2c8e8effb82ba68b55a422126aa9ddd9903c5e75 -> cargo-c-0.10.11-funtoo-crates-bundle-12ca839db8b38aac6778fb0a09fcd8ee4029ef6bd1a2985802e2bbce314b8039bd0fac36238586f2e7e95dfd72b8a81a213a64ee8d6e43b3f3071647c6ff6f6f.tar.gz"

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