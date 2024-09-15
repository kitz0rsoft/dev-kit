# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/fe/f9/dc/fef9dcfa036099b8bc028239a45e4100c76670ec00dc5449f96b150b029a0bdbb4bcc605587c3fcaabac833e1a68b1e1ee191ea42e3bc449681afd125f085da0 -> cargo-c-0.10.4-funtoo-crates-bundle-7f7fbac37cd1ae3520b9e3456c4ae9f85f25578264517e7cad541c9f43c6440b7ac1c1ceacd16ad5ba6a7012afe987725081bd0b01f93224977652197483c0b7.tar.gz"

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