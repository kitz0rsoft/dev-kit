# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/fc/44/68/fc4468217f047e6241bc6f7ffb552a32d72615abf41e9c1659e37c949c076dc23e77fe69018dc9790d9e879a17277c4d30d718c5d15eb84bb7bae228bc3b5f61 -> cargo-c-0.10.4-funtoo-crates-bundle-dbe532544f1ec51ffd933e8cf1e7a0d3cb50dd0efe7ea6981a5341199e8d0a9ac04b92d4a3e6f618d5e0840d92646d5713dfb6c5269153894780522d98df98d4.tar.gz"

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