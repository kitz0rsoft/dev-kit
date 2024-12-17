# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/a3/4d/21/a34d212b835ccb1a21513b133f3cce54dd24d6595f1f5a541d96ac32b39b7ff3e7c2687802b8aec16a353dfad40f3d893459186f61f151312284641608e6648c -> cargo-c-0.10.7-funtoo-crates-bundle-3bd15c03fa33d4f43f8aeed296fd546a0eda014cb7d8a91624208d29e620b6844edc3349717cf6c8926445b21496bb3c151864347f52ed89118747f23775fece.tar.gz"

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