# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/ea/2c/57/ea2c5788bfdd19c7d979101cab4b99d2966f384bb3d0a343aff905245d51032e60a0bd5c18f15b48b2ceb0862003d06b427bd3710a344e32df88cd279da28f20 -> cargo-c-0.10.7-funtoo-crates-bundle-2c01263d2849099d2308756e84e70462f25b7ab7e0cab05538a89cbbfdbd22f3e023e3d0963a9e5c7562d2dd9ec4e505f1160b6eaaccbddd85d453544672963d.tar.gz"

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