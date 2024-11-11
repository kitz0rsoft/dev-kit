# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/a6/07/15/a607154624906bd98c8e05271afe17ac3a281de717183bd543a1ff3b3f6734ff0cbdb3ff6e840a0e55c87411151a58e55b60daa0ba3dcc868621209e09928a1c -> cargo-c-0.10.5-funtoo-crates-bundle-a42f72a5873b970f4fe10dc5c53e34747c20fe2835b1401253ece34590231befd3be591af5a052b76d9f0673c0de5f6c49afcb1133eef50a4173e22582bd1d2e.tar.gz"

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