# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/a3/ba/e8/a3bae8d510780f653e38cdc58f066b34911c2e498fe50f9522f18f59be8fb2da5fa8a00cddb369c50cdc7d68cdc1aebfcbd7e01f05d3c6c6a419612a2d08720b -> cargo-c-0.10.11-funtoo-crates-bundle-eb8c160d77094a69c4539ad18ae5707c3573f752eb14feb75690ad5b93cfa89924d18a72d93190fcf054293068a07507adc86e7b76a96b0454a07e8f574849bb.tar.gz"

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