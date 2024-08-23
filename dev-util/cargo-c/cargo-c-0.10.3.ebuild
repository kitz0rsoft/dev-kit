# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/dc/81/43/dc81435fc1de973399ca86586882ea3cce70b13e4ea16bcf79ffaa9cc91c48ba56261df2c394868ac5da86fb61bf26e5eee14942cd43294b98613f1549674b02 -> cargo-c-0.10.3-funtoo-crates-bundle-d4e1a1585fc080995abd305c8b56d630a3ed22f60f263242739ff21a3d6d6d825b46910259daa0d78641e9a2d2018a746cdf6f30f7229baf3c21962d0a028211.tar.gz"

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