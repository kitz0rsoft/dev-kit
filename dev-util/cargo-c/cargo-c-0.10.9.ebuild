# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/ff/a3/5e/ffa35e7f633350b736dba321beeb862e6960eea17b5233c38f61359eb83d62c44c269882a4b46c9695c27aeac3d6d2631abafcf99d0c53419a1d51b96b894b22 -> cargo-c-0.10.9-funtoo-crates-bundle-d634c8e61ce899b457b72b61ce64dea3827508b1c40026c9ac0574f2bdc69df8430a364fa943ff29f396c9c3edaa94400888ec961a5a78b4f259f7a7705442ac.tar.gz"

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