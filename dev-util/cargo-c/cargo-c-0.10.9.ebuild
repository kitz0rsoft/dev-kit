# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://regen.mordor/81/c0/16/81c016dcfd0d3b0e9640446b4b1885fe2914310da7d6acd25c664ee56edf367514d5a239d05cb989fb7c83df86bb1c625c32939635ca36ee1ab955321b88c9cb -> cargo-c-0.10.9-funtoo-crates-bundle-cca1f973baceeb0b732f8ac10195fc9ded2ad6def612d215ef2b87607ea484b98cb4e701554587e404a7e3fccde9f870988b6d8d4852625334c7b0b0fb41648f.tar.gz"

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