# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/39/92/61/399261dc344585d367dc7277d0be86a61566c214a80e6a6faa59ec5bcc1893c517f743079382cbc7aeeb8f877a2be55b88970c96915930fcb67f21130b424f9f -> cargo-c-0.10.5-funtoo-crates-bundle-864823654bdceb8a64af5423b4a139fab38c1398332d502d0060123fbc1d2f7f8ececde4971b2d6a0cdc4844bd6129d97ba488cf547b6c57290efb9f93d38912.tar.gz"

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