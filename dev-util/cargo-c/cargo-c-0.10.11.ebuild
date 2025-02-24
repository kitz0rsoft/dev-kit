# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/df/f9/b8/dff9b80215ba0f96d2d450493274bdf11636f6101394d69ffdbf7793b09b4486f634a24a8ae93812cf3d73956594537cff8f7495d83cce51e160d8bf9cefd545 -> cargo-c-0.10.11-funtoo-crates-bundle-607f996be2d4468edb707b93cf049d5957f2793b4978b84940326db0202e140174ce91821d181ed4990db4f49b75b5836f6e1f32847f6340295a443d237cf945.tar.gz"

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