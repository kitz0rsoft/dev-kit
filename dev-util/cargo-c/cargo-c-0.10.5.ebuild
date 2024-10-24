# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/6f/ed/0b/6fed0b55fcc1ed10a4abb62bda33e2fa79ae0ea14a5e606650b181f1a582f0056de5f7c4f982e93d7b0572cd148e83c8c825b5f6e90c96112d2237c2926e285c -> cargo-c-0.10.5-funtoo-crates-bundle-96ddf5d53d874c1208c1d74dff87f992b40e5147248af7434adf926e1fb2cab99ff58b06807464693bf3c3144dad9499a2a1e227910aa3ed1e463e47c19d2cce.tar.gz"

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