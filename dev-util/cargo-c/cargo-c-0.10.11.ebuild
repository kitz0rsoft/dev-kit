# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/90/a1/fb/90a1fb07d70af5ec9aa625dafdf588b5e1d8f8e56ee83b2a6725094a0e893920e268b6633387b63825a3826ffbc3f677cb856bcaa3bed1fade0888522b36c87c -> cargo-c-0.10.11-funtoo-crates-bundle-93999237b7ac20e9b7c3a79a2df136c3c5feb634b4d149b03a1f0546a7057b8df47760d6272aa768f967d8d5d1554570de50e8243c322611c79ea108797c6375.tar.gz"

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