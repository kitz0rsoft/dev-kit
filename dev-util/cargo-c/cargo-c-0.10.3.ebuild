# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/91/d3/85/91d385fb8fc61c0f21f84c16184bb0b5ffa676c70ce8fb486b26d1d35b24e8f6766c47803e01cf7a0ced713c912db2de7e5a144f3912746df8845bbee38c923f -> cargo-c-0.10.3-funtoo-crates-bundle-6e3cd69a63a917a99f742ebcd37ba25b740fbdbe5d48ec0ec72ea53cf82740cdf96a9168543131ca739a577a3c7eb8b50e4b76e2f472922a1969144b65861cfa.tar.gz"

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