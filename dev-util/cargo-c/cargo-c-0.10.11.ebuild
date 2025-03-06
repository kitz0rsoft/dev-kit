# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/86/2d/24/862d24fe36e82874de4f72ab336784ce11929e7069cc29b06e76824ab6f733a275f6ecd9f1f55cd67ee3ae90863a9c29571edae4e290a2a3fd0fa50be1269999 -> cargo-c-0.10.11-funtoo-crates-bundle-b87e090e940c04be818c8b19d4dc8149130b094d92e505544b68c6e592fb5e0c9d6dd8f330342b957ec1c542a5f197ec6f956e978ebee3576a1f3526c9702434.tar.gz"

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