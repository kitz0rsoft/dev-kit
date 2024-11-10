# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/9e/fe/35/9efe35dd9f95d5783b6d6b2748d55798811134f96ee4baf106b1ab9b93174cc3d69317cfce15d20fafcde7accd0f3a71b60e6f447b312f45dbfa810170c6d209 -> cargo-c-0.10.5-funtoo-crates-bundle-8fcb946d4f7437dc7aa73c0705cc3b44a87094b8be1e59c2740512ccaa4eda45c0280b785295f84c9a0d780ca6e1ff6beb50b20dc7ac00d6ec8416370107beeb.tar.gz"

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