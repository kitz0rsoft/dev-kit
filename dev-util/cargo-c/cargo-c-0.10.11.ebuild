# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/78/cd/45/78cd4559e80a46aeb1152ffe04c18ad444a3780daff880f3464d51effcd302c8aaf2f27e6ee6d0705b569946a03bf1580610cff6ce892965b0b4f4a34bff5ba5 -> cargo-c-0.10.11-funtoo-crates-bundle-b8b7e54899363b2347ce15e4f46306d425159e26fab5f63e8642508244995fa7016fa1edb822b329c6f0757092bbcfb942f0cf1d9dfe05d1e6b6e425d6ccd2b6.tar.gz"

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