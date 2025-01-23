# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/ab/50/05/ab500537f27d5c3fb05fd440eb91ca4b2d6eb51a8e27075a7c982838cfe6c899eb0be6e50bf4e0a2289793dc4fe2d9b5e0b4cc26e2b1dd8443258eb8e6599bdb -> cargo-c-0.10.9-funtoo-crates-bundle-5f53cb4b52daa0216b83c1fd8e2c9f47c3f0afea513a5446d30880c38a4cb14db8443831a0da83be11cebfdd08e98f404a31827e87b6d986dafdbc7b0ff29e55.tar.gz"

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