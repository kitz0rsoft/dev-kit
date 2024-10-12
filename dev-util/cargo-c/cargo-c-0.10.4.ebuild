# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/09/97/80/099780fe9377abd9fd14d63399ba4449b6cc457c4ac574be33d433859ef65b79f263366f22c77044b3fda9726dd62e6bc89a10dc73b0e437ba5e3d4b3958b9f9 -> cargo-c-0.10.4-funtoo-crates-bundle-85dda0cedf7f774bfaab027030d4527c661e1b9fe1924ff7cec4fdf4af29d5c8f3bd23af491469d1c32f2a490833c06a81e0200ba1a2d7ec3ee109f9acf766bc.tar.gz"

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