# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/a7/c7/73/a7c773eedfd8e1295e56311622910a425bbc6bd3c89920ac8d4b0801cf8824892b71c33b7a6f97d0051b2c168eb2a2740cd25624228c98d67d6010957758177c -> cargo-c-0.10.9-funtoo-crates-bundle-e8aedfafd7b82c343374c003cdbea4b3acfe8c0cdf41cbaa989a887516a3905175ffa2b0d8fdb638380f1f6f31f398a85ebafd6f40bc558ef1e59c63fc31a865.tar.gz"

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