# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/67/27/c7/6727c7152754469757ffbeede72ca6ed23b4fd7f2225e407aabad39113d40da0570fd46e9b4d12edb25d078a5edb8e056db80035552e5d887c1f4fa6b09f85d7 -> cargo-c-0.10.3-funtoo-crates-bundle-157ca1561638e4ec998796008349cc7dbb8956e73c64789eab39ee67ee2cc5c38dd107e8488a757ddd48d8dec41d2175ec428c3e027a176c063af37734a5f1c6.tar.gz"

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