# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://distfiles.macaronios.org/b9/1e/16/b91e168be0048fe1c6233e1ebe228319b7070bcee3e503a3dced6e4238b2e4197bf1ab3db2af67e1ee90d09c3eedb8f49760da4365fbf3a6a42d163e3474de01 -> cargo-c-0.10.5-funtoo-crates-bundle-48fd3d1159947bab44a1c453a015cb17f8eb5cdbfb5a242d1ade5d462ddac0fa5f7cd868a373166619a93654613a5994f06cd91b96758ab7a6a65e5a807224eb.tar.gz"

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