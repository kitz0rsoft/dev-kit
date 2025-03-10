# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/b9/9c/5e/b99c5e162de185dcb7ca66edf1248fc60b8e92bf911c2ac67a27c9e1311bb98ca9434f7c583ab249d3bace6f78349d0caee1bed6fcd95869ef5f82bc09e9543c -> cargo-c-0.10.11-funtoo-crates-bundle-6d68ca6d1366c5774f4e2f94601a2244a5cf1a1df22a3ca6c20476a6b4356cd0a6daf959ae86aa0f24e0c350fcfb8781c11a38730232777b4f5a066b996fb17e.tar.gz"

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