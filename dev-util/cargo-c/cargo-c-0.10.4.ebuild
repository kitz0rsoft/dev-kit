# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/1b/6d/42/1b6d4224447bc90633872c65abfbdcccdc03d530c162395d7c5a78486995c7d4fbae01e5e65bce1b6e717c017a470d9f1b33b2bb2355898e66d300a7d7ca748e -> cargo-c-0.10.4-funtoo-crates-bundle-0b029aa2ad41cd9cabca1738648835da47554c9c76ff1a8300d90fca4be10024e899981c09720fa44664475ad27868b83d83447710d152ac05c48a01d5c14541.tar.gz"

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