# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/c8/26/59/c82659e97b89bc3eccd966568da1215c8a80f960ebaa5148361e89f8463f991e52ec1c493a16f9a983c5446c9c6be8de721264fab82ce3be352760c6917b83da -> cargo-c-0.10.5-funtoo-crates-bundle-e25d7b4a2a0f3c71034dd55a3b3c80797a7c17e8849b2aca5acbf082f0bdd515ab88b684daf4c16365384d4d446bf642b2806b6d05170d3febdd37ef9df163f0.tar.gz"

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