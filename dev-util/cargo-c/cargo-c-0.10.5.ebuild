# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/3f/be/3d/3fbe3d5bff376f946862ab7ad186685e5042ffe97ccfefadd3780baf66960f7c009b011dcb4298cf13487203ea9534d0bd0af6d615b57e8bfc4a22f826af922d -> cargo-c-0.10.5-funtoo-crates-bundle-aabe79a3f5cc653edef93b1879e3958b385b0ab4ae22b382aced7aa01cde35b933a552decc35942b278933a0b15f61faa6e1dcedecf91aa60b769f0327f35c78.tar.gz"

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