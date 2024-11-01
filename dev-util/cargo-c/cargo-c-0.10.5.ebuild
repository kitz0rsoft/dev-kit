# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://distfiles.macaronios.org/e6/e2/e8/e6e2e82f3f1fcd3551d0e1fe4e5c8ab2e514c56fc27b5b358c50626d4f6250b9c18501c6b25154f7f55e9a37d9661c0bd77bedca7b7cf806571b4ce49235cddb -> cargo-c-0.10.5-funtoo-crates-bundle-d0dfc8b031aa938894d69092afef0b57c2c6c2bf90fb0abcb2208a178475ed7b4e0b638563792db5d43a3914d454dda6ec78c22ebcb97f04c0030504f7331004.tar.gz"

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