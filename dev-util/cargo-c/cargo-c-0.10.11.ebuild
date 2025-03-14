# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/b2/f8/4d/b2f84dce7cc8adc93683cfa4822f02cffe7af77c637ca6bd17a6e8a54e8105ff3c42ff20fd34167ed4d179c6fca3dd139ec9b7f36a96bd1c5522c1b58f4a04ce -> cargo-c-0.10.11-funtoo-crates-bundle-ac85e091c8ae66678e97ab10699b31448a8702212b593c2cbc5454ef115ce1cbe90a65c94488c416bbaa8c4221bc1aff893ff731177e7943f685d2dee123bbf7.tar.gz"

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