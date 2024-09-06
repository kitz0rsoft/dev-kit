# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/38/52/9c/38529c909d5a84b5140faf8534c04f2639edfa41db70967a8e07c392fd4a3edf4c1171c284435db1c18126c34c67f017bd519e0ab02e5702449d2688838c43b9 -> cargo-c-0.10.4-funtoo-crates-bundle-0b75a0db8ab25b3b4cbfd1bd6bff888989f518dd46fc116af06e68690295f107965b270f96389dbd320e06657dfa546d8d84c7c35eef9de16be19652db0b3190.tar.gz"

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