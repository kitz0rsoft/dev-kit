# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/67/da/4b/67da4be84fcb1eede678ea24f2731d486274d708187c9407081187eae4086209f37c092d5d56f37f1a5c034f9050959cceafef3707f61f72689d531f2792e4bb -> cargo-c-0.10.7-funtoo-crates-bundle-4cbb14a11936443d42febe4d937236b574d322fda72032e076b64092fbedfb75142f076856c225bda3c84c5d983a20fa6810fee9b0e55e70530c5bd7beb18f0d.tar.gz"

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