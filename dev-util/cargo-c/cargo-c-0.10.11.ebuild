# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/58/38/3c/58383cd7cb8920cf23f787a691bbeaf28bfa332d9051cee0e05a385b8ad5345ed1075cf53d30c1e3bc4d116315710d95e8f1135fccb3c2e3f337342268d35964 -> cargo-c-0.10.11-funtoo-crates-bundle-72e36eda35ebc49425a52470830771b5fdc0a5f387ae717d91c71d830ac48e49966c331901e9dae4dfc02d0cbbc17e3169110df0b3b9d5f5ef24c0332e49185e.tar.gz"

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