# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/91/00/01/910001365f4f65f6f0d0bd9c2a8bf000659e66880419a2491448ec03fb6de31b20ada9b708bb68b03adfbd03f322dbc1128756d932e33cc203507ed49666ea7b -> cargo-c-0.10.7-funtoo-crates-bundle-4496d59ef2d974780ee938b04d71158537103dd3c1efdc326e3aa4098a83f97e999ce1432abdb5d411b2001d6026a1b2e6e368c5ab702d67c9398a9a403edf10.tar.gz"

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