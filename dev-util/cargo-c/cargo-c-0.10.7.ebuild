# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/50/2a/ce/502ace1792061de37f64f685eb5ca76e4b808a4039e6c6d381ba50c426b87f241e9ca27ec230484d150f1c3e84b2037c0726cf2a4b4b1669dee7c164bba4c5fc -> cargo-c-0.10.7-funtoo-crates-bundle-a58be28aef84849cb7c8acfab3d4388fd37d777c63f9c10e53fc8447f7022b302023ebbb298f6f095fc066878e198631fa42fd239831259beb4c1ad02db482cc.tar.gz"

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