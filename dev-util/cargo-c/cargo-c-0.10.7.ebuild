# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/fa/54/70/fa5470fd58a090a2c5bf4cae570d9946d7ad63ccc3075f4e7e6e886c522b799903f94ce53d170d68a98ec4ec329cb5dd780d44622c933afe3a07cc0508711964 -> cargo-c-0.10.7-funtoo-crates-bundle-36b6db27e5750772f1468f91ad4ca590a1374a6f37b77df34259987b71fc78db9902429638b2a22c27eeae3a2f44a51e5cab724e04531e022b4a53d4f7e68b20.tar.gz"

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