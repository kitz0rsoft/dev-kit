# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/80/8d/d3/808dd3488bf29181e3de6de3c5ae64276473b08f5fe6461a9effd5ae5766b2f85961e2bcd155b0bb40adf1f51225b3ba0cc05552d43e12ea16f6c6b6ec12b444 -> cargo-c-0.10.7-funtoo-crates-bundle-49984185c4c0db5a656a9657513653b1570fc8ce9781adbbf684aebbafc271eed6d55e6229db9dbb119333b4054eb8e40f54160909cfd818f35538419d67499e.tar.gz"

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