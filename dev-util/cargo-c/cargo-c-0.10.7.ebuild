# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/00/4e/c5/004ec5fad79bdc0f3d2d55d724d0241ae6696a75f92f02df99f2f268aa4ee30c16fbc2799ca8947242b673867c90525fa62e913be043b92e0d28471fc51b87a8 -> cargo-c-0.10.7-funtoo-crates-bundle-d73b2fefced38380b160ba2e61d943f9188f2161fbf9e159a93ab398a7f7c24e7e5f514e7cb7deff9ee543d23a08bfcf6007e5ff8485e4ad7cca4df516e20158.tar.gz"

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