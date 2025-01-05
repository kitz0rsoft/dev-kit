# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/f5/65/35/f56535162db94d0f031b3993fcc87ec49e29a6019c16704ca8a43ffc33234e1fb6ba905b332dca4c1580d8bf10b76585730e52c78ddbbc3ee4901551b3c90b6d -> cargo-c-0.10.7-funtoo-crates-bundle-4311909070b3afd294ddacae0bc28c9d0c9958bc6c70aa5039359db2cbd3d51eccc43a3cf50663c20150560419719313c5b70e333bbf73010f388638be2fcefc.tar.gz"

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