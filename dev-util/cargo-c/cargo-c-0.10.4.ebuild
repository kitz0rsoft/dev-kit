# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/df/d0/7c/dfd07c3bc1211982959e95904b21d434de6cd01c2b05bc75b38893a67ea7087c3069c8c0e2cb46aef82ad9fe677bc46765a08da81f50cfd910c8c709228c45bb -> cargo-c-0.10.4-funtoo-crates-bundle-df7d77f955dfbb5494db9e11690500fd98a144137fdc5d121712389354448b9e1d305ba3bba3ec8d1d44d7ec8d9b6a269978f2e8dfde19bf39a738c174cf8997.tar.gz"

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