# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/4f/04/4e/4f044e189139693b96a53a1478d106f2088d03c7863eef692cc3ce25d31d34408684e39413869619868d9626dd297c408702f84e27c114acaac6911a9d890d1a -> cargo-c-0.10.11-funtoo-crates-bundle-74d765214155b3ebcbe7cd085e2cc15d5c3f4de981a95a833770685cba64b8ea096afbb82a4cd58cd5c57e3bd4ccf9768dabe7a1813540dfb103c51e0044c118.tar.gz"

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