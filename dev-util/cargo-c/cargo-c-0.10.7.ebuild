# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/b2/f1/df/b2f1df1e1cc7c8de53492a98c730dd4bfb099cd00895067e5567ec3ba69d86b10cad892586c6b45ffe6107b4d2c43618f6deccb3d70d0fe403cbf787d2343fe5 -> cargo-c-0.10.7-funtoo-crates-bundle-091ecc298bc4c351e41a32d14226ab3d4a1ab52553d7818f3398582b6b2f11bb15e3720ae8123f2f0cbf0a9c765e273859ea2b32b388be0d515aa99f1ad45e3b.tar.gz"

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