# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/60/67/6c/60676c773ec70a6b64845919bdb1d84a9d0433bcd662d42d53b994ef359223bcdd777827d540252947292221662568930c9eb7e5399304e91048d3a981393c8f -> cargo-c-0.10.3-funtoo-crates-bundle-068b1b97ee1de4c36a8b954087ae426ba059e1f1b9d2fcbd1a5047610d52b2c2f2ecb5c192d911fa8b4a61c8671cd545643dfd00f7137cddb3159935e6eabf1f.tar.gz"

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