# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/1f/12/7f/1f127f1da46b2e761ff2c2f95c617fe7ca5ecd61f2e7f5b26fedc096b47f9f9b6014c1da3745907a042be61f1c080e29a43c1a50e193dbe396a1da903a9d8f09 -> cargo-c-0.10.5-funtoo-crates-bundle-aafc25fe677af83056d8148eb1bb980463bfd7368c364079be95b4007a48bf9325fc9ddfb15c4e437a44eb75b1dda581ba87d34cad879686a48d94152c4a7d88.tar.gz"

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