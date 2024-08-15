# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/68/90/3d/68903d2cf1b221373f26a735a0373c5b7508a0ccb774f155f8a905b6611f52f373dc57f63d62ad2037ca6bf14cc4101a530896348d32b8e2234c489769ae205c -> cargo-c-0.10.3-funtoo-crates-bundle-a29eaa9b037222ad2ca63a20288a35837f67081b6d24bd3268a35a8814d67547ff497ce7fc69dbae3cc38d038abdf5c84e56e100582afeebf8f17df7cbcb9ef1.tar.gz"

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