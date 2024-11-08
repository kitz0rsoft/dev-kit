# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/98/00/47/9800474e347e35328a0b16feb2e28ceb542c3ba14056051d2a3e8b3635645c02e796f05ec4f879dfc8cdf79f1a992e7ad533aa2469f0e188088e316b6ba9a266 -> cargo-c-0.10.5-funtoo-crates-bundle-016625dcb544171828eb11fd7d02bb70990f04c873a132bd0c4bd90589ef0d40f21bf2c24844ba38a06a33f6fb6d3ced9b05989ff3c48069d1d9f4e9e32cdee4.tar.gz"

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