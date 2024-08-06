# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/de/41/7e/de417ee41370b75269c70030bb25b878f2f9d72e854a0ebd6d85e8eb83b04e121aa7dd3bde60ecced9aa8f5d87f2e5314bec4776931ea8b3eb6cb6e4684dc498 -> cargo-c-0.10.3-funtoo-crates-bundle-4f970dd9632d9a7f894223e1ec6336715a4fc721343068feb56e60d0cd7652ff5f04673b2bc321e2c25ad9b21ee56ed131581835138e5782706604ff0851ffe4.tar.gz"

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