# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/f6/77/f8/f677f8f4ff92f926bbe648e696cb38f6d2bceafd5a94a6d0c5f278f7f3ee9e6cb83fff37e61d0d9ff1f893218c74743ff01e94c123114245df2d4252a7da79dc -> cargo-c-0.10.9-funtoo-crates-bundle-fa74b83923adf16488297f0b06c64e0bd7acd3dca401a0d6778c3276284430c4601ff25753b1b9a08b2834a46fe5e2d052e4f8d7ade6f8becc10db91cca423a0.tar.gz"

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