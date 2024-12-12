# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/77/a2/94/77a29475541eae39c07f0f6f899c71444c568660dbd41b0c9005e9aff2a804771f5a53e6a35a9d446ea4bf34fdab5758b883a00c79713d1f0aec7c3d4a527b49 -> cargo-c-0.10.7-funtoo-crates-bundle-c5bcd14af602f1efa2b921f3e2e7d07b2b49893ad358aa45b39d4cc6a5e827536f6e6b37791ca4ba1c732c071cc1be10b0387698faaf701ca64eccfd90be5f08.tar.gz"

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