# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://distfiles.macaronios.org/f0/58/c1/f058c1e2476854654913df1b8f6e1e60a583f45038d5b4eeb4e52346cbab413c5279912700f9b6799e35b87cb41b15bbebadb265b2167c20fa9da3855b436c6d -> cargo-c-0.10.5-funtoo-crates-bundle-38a191ea61e3839f42bdff8de0d311e6e917a163d007e2214165039aa661aec479ed1b88e6bc7d0dd17e5b6784af14a8bfa443d6525fd9bb2aed422f29b84c0e.tar.gz"

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