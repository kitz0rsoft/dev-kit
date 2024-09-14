# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/5a/e2/d6/5ae2d6b7d4adbb3864a0325f5741965b28b5efd830725e90878c93fee92c21e01b156e8cc0209fbc520578260bcd25ee6535ec2413723227f364f1382c543087 -> cargo-c-0.10.4-funtoo-crates-bundle-74153753c1c25604ac43f3ff589ce3616c8023b6f87ff171406a2ebd44174c5f9a31611376ec6f98c069f6b7b205b3a25d5bc3ba5ab0faf7a6fcd09eaaf3ec43.tar.gz"

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