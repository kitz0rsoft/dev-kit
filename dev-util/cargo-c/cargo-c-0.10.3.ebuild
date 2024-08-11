# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/14/de/bc/14debc8dad6fd3c4338407fd9d3c5896d1c9cea8f0a5ed8b22af4b77e86adc8ab6d5b9a0498af8719258eeea745eb04c0c383a7a04294a2e69e3cfeb86202835 -> cargo-c-0.10.3-funtoo-crates-bundle-6fcc2bee81e70cf17ab3b11ce3454e189a8572585ac14fe7401d112802ef7f348b79259c73af43fe78557cffdaaaf6565e60b3b3255bc886719d0e05c789e855.tar.gz"

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