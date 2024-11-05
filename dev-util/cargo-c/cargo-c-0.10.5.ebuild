# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/47/17/de/4717dea0c3b07f369e0a0fd1744038b16aa824e2cf7329f51df3eed956867d2d1739226d4bce03cfd3aeb58e5a3fd7b64528dddc6b34fbf5c23528d73be3b61f -> cargo-c-0.10.5-funtoo-crates-bundle-a6d503fe98877f3e33075640f422bb22470c2af0e851c0f830150511bc6ef325ec99b13bfd883e891c286da8d2e88c93a1ff98a828e622b24fb9d5379137bbae.tar.gz"

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