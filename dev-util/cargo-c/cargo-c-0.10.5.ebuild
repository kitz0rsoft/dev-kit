# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://distfiles.macaronios.org/6e/a5/82/6ea5824f49b63374ed71cc842cf7d19cfca42fbc8b8c9837434e1553d5fdcd4da8448151d99b119540c0cc17e983538f6857ce1b6e734ee31df19c5211917446 -> cargo-c-0.10.5-funtoo-crates-bundle-2cf15e15c85f06dbbdeac5c8abbf27058679aa4c14d9ab2413690dbd444626853be1f054b06f998b3430f120391cc686774602f81e616b94cd71ec06403d2208.tar.gz"

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