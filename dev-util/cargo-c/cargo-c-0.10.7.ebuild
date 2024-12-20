# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/8e/98/e0/8e98e0390a8caaa7c02b8cb451100296bbd6e03e29c7205f286314864a075846f49f62217917a31201f660daeb83ec13bb8568f14e028ebe88dfaf8467108f9f -> cargo-c-0.10.7-funtoo-crates-bundle-7c9386a53b39a9d655a9a083283480318bea55a87326200c381624f0acd6e00bd968df3823dd534388d240f1de4a2280b16288d5e5f77cf9ecbb76e9207cfd45.tar.gz"

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