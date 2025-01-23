# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/0d/29/9d/0d299d0386a081a7d55ee8e3c419dd14dbff330fdbf28976d0d738d58cde26c62e8aefb441646fdfbcb69e4a092df3e5e332dc7e9d74d1cc6c2cd1560583ff4c -> cargo-c-0.10.9-funtoo-crates-bundle-47e2ec00a00d5012407335f41d5a3403555894582fee60fda7c56df8225ebe47f4024a849794a77b0967df238cc05b5f36e8ed5bb45255d3e7478686620a7256.tar.gz"

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