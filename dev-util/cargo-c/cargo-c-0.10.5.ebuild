# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/3a/ee/66/3aee662f55e475112a0d35f3351bd58f0c27ee1ca0d2bfdfe98f82390397c9b5beb03db622efcd885fea701b70337f091115b3a56543cc84309a78aac9eced27 -> cargo-c-0.10.5-funtoo-crates-bundle-d163ea11b184c87a75a8d11e398f7d0a788d36dffbec4c5c28e5d83b116ebbdab268376f80604db13e345a2cdee0c5f38abd1d916712803a03d0c63a8a06b9f6.tar.gz"

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