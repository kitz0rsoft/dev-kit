# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/98/4f/15/984f151e88906f7041dba9427cec77a85b3ac95f7bfc27eae4a282474435e72879ecf949072bc70e2029867d9871b970380cd9ee8aa2a69462ca9e4b764573de -> cargo-c-0.10.5-funtoo-crates-bundle-a5c602bca9e50e863e0aeabba0b97a477f82867a99e644d7c4c0a7c75c430977cd1c0cfa7b19f0054138c6054d0768ed6868f22f59a44081adda8dcafc4252c9.tar.gz"

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