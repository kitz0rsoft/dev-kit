# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Yet another cross-platform graphical process/system monitor."
HOMEPAGE="https://github.com/ClementTsang/bottom"
SRC_URI="https://github.com/ClementTsang/bottom/tarball/2f102bc1aa7fcd05f40e616c743804295300a490 -> bottom-0.10.1-2f102bc.tar.gz
https://regen.mordor/05/0c/fa/050cfaa1a5742aab978ce55b12f6a1aaa9c6ab84903ff56cffa3c30ae0cc5834efe8e2256d1df4356aa194059c9dcfb6a977fa515a5cc367cde1a97048c2f24b -> bottom-0.10.1-funtoo-crates-bundle-e934c30018c7ddff2c4105470742a48afd70f012b242ad29c8e9c7f186e0bbc52c848c612ac7fb13ae57ea8c4aa070fb3107cd8032dc9fe238d6a4260b4e3fd7.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND=""
BDEPEND="virtual/rust"

DOCS=( README.md CHANGELOG.md )

QA_FLAGS_IGNORED="/usr/bin/btm"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/ClementTsang-bottom-* ${S} || die
}

src_install() {
	cargo_src_install
	einstalldocs
}