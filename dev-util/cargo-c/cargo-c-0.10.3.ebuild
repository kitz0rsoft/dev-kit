# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/14/f3/53/14f35318a88bab526b715fdc8d90f9d35555f406acf5a08007ecb4f7459282e17dfb2e4c9e38dbbe3c979a66755b4821b6c5be0135ec05bb1c8d906b16d2bbad -> cargo-c-0.10.3-funtoo-crates-bundle-a06a88b9fea9caba1911dc79a06b3fc82fcc964980ee04237daeb83cf629c808f65ee1555d3c1baebe1c1ea434bdfa8ea75834ae66651039859e5fff94ba113e.tar.gz"

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