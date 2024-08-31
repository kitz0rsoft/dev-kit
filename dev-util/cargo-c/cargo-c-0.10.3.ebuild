# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/1e/4f/91/1e4f91e1711f63914d13170345543ab0969753d30fbadc2b39cc8a10e6a66b5caa2a428b6cf08ba1528a9e15e5a8d8861dc35f4853703a20f4c4f817c7faff0d -> cargo-c-0.10.3-funtoo-crates-bundle-5816953d9624578b52c2773f02bf4f3975b810a2219a75f3762dbb01529b74023428f0dd6c4b07e2f7f3aeac0ec45a958e16c040dcf12a865e87b41a924cca62.tar.gz"

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