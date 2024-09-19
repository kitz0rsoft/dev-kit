# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/bf/1f/3c/bf1f3c3940ca8e13157c033b7ce7befdd67e19b6947c24c7dfeadc7d00c0a8f7b1da4077f9bc51b8dd49d6d1d50f64dab16fe8459eb3c7a003a5d9207a883c99 -> cargo-c-0.10.4-funtoo-crates-bundle-8fdd085251fcc020e228d6d6994bc4352e4ba72168a1c79fbf46f04d77d57faf29f5a03513c515ebd8768a941e568a19bf379ecba7a33effaec8013cd757cca6.tar.gz"

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