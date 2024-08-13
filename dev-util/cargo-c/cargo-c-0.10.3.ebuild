# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/22/f9/7b/22f97be7eee0730f7c3eb4ef3015c03be12a3fdf23a407dd906a5f79ca58ad37a56cc578a79e2cde810d02be8302f66ba6719e485756f7df2e705be72251eb6a -> cargo-c-0.10.3-funtoo-crates-bundle-63c010b5e9791cc8803c218fac2545e8732d74fdaf48c1efc84a69b1cc40b3c4003ef99c92e41fb5dc7036eb81c481b1a5fb64a86bed0b0d2a8e86cf6ba6d135.tar.gz"

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