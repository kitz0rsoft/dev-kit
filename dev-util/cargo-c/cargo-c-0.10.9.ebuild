# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/1a/bf/b1/1abfb1de58bfb4f177b9b9167d79553359ca1054c0bd0afc5340ef43d57441764e42c128d9ab0f550049584484eb3deb05137f8af4d7ddae0500f93b9177d10a -> cargo-c-0.10.9-funtoo-crates-bundle-58ae3105141b6f681af5ee733de45de54e0f3d778d3c4a9d4bbc257dbea982253de7e5e023d9a6276173896c5804feb0a334a8f668b7dcc84bdecd56ef0ada9d.tar.gz"

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