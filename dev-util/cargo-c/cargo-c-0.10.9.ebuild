# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/fa/fa/84/fafa843b72e75cb6b57165cf6aa0768a154a6741d642a09c42b2b5e1b4b2bf194cd0b36fdf3150edfd0f3a20254fc9b0813c4d276e6dd536d228c42b67004f82 -> cargo-c-0.10.9-funtoo-crates-bundle-0a50c0a3a9c9f41f0dc9c0b68a5c3cbbb2f2f459fa5ee6921d6796fb17ad028aff6402af994d84dcdebaae1228299cb67b377521eb621301c87741bbaeac1112.tar.gz"

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