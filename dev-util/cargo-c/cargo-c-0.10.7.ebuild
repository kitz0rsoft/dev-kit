# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/2b/9e/67/2b9e6731900ba73163ba5a0f006d0b211e862d52969c35a938ee7282ec153672b131bef21e18c6f2008d5413024fbc8b3a15a5e8a921b999fbe83a749f60ce97 -> cargo-c-0.10.7-funtoo-crates-bundle-565649ec41e6df6c95996480c9fcdab8b9584d533f43158dd0ef48ba477b11e2255aa2dc3bd5b1e34795e2fd420b322262519a05768bf15182966e36c225aeb0.tar.gz"

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