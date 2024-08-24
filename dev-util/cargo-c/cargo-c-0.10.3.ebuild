# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/a6/e7/5d/a6e75d96eafde60f7538c231ee398da19f4ac86b08912ac3f18eee2ae89fbe89e7ede434495e6750ea0ff13e64306dcb73944f2df901557bca1699612e07160a -> cargo-c-0.10.3-funtoo-crates-bundle-77b7a0d95b72355128beac6577582465a24cc0a7f1c387fdfad7a210a77e3727b3541461c321ec6dde60aa8cfd4e67cf3d230b690c446fdabd5c73b2bcfd0006.tar.gz"

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