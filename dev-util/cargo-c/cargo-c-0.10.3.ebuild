# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/c4/fa/91/c4fa915b3b73323c272b190ed5eeb2357a5b5a58d1a9004d375efc7d030f8944846e5558e33ad605956f40bf566fd3562d65e1464bd70c25a9eef0c5fd4e69ef -> cargo-c-0.10.3-funtoo-crates-bundle-b2cf6dcac71bd69969b56c2c071e4fedf70d7410c8b84a8c119e214660be979dc4c4385395cd3a2ef3be0d0aa6aeb717224982c65cf1c2359151365ec1062428.tar.gz"

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