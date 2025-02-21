# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/fa/49/b7/fa49b7669c33ebd4f2ddf805cc91b1ef09930129ad58a0692957ba78ac1eb4322821d1c48ec1a824a5d5abd43fb580362058075b55374c724b198a1f46bc485d -> cargo-c-0.10.9-funtoo-crates-bundle-5afac65f4c4ecdc8daa9831c811dadf2539e893655caea2a0601fa522e29c881b5449f0c4b8c045a53fdae8cb57e5df6000fc854240cc84cace378ada1c0d8f7.tar.gz"

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