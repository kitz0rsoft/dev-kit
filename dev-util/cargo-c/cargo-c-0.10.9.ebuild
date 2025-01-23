# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/7d/68/2a/7d682a5d6b0e48feb393f71a5c2698fd7eccc1012b02a26bee775f8d91022dbeb5b7790cb59984acb796ae086fcde5b4b33380c89041764566d58286227d54c3 -> cargo-c-0.10.9-funtoo-crates-bundle-778f8ed9fa99162001b34cca01278ce038f43f58fc917e1869ce7f6166d0cac3b659ebccdcc107fae63e477cd7e2ae74d111dfe16830d742605a3e30a869b2d3.tar.gz"

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