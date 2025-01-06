# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/f4/db/c7/f4dbc79a88239106aeeff5d18914e38660d80e02ba319c76a1dfdb7f8748859ccec775e1a73b277079e43bb9cb6a942b1e68f06b32d46e360113ef6bc8990d57 -> cargo-c-0.10.7-funtoo-crates-bundle-87142771856e976f9c7ed0818debb4056b36ee7f14271a01f004bf848312c0714326e3e38334cc3c7550472e992ee4b15a6fdaa8785093112c0aecbaf8c17c39.tar.gz"

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