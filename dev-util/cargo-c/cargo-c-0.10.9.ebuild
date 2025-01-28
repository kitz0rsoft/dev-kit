# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/b2/8b/72/b28b722d4277cf47b0839fad049a98a93959076d27fdb4d7a939b3fb93ddd7e42735c6315f750e23592bb1a7a6f23a399662215151c65caa7f4663890bcaf3dc -> cargo-c-0.10.9-funtoo-crates-bundle-068338d4b73652b4de6b20d78a8fc2ff05000e789465a3194b6dd651fff33f938d44cf4c94148d7df1efc825a4ad9f2df8278259814290cabf48b2a5915bf682.tar.gz"

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