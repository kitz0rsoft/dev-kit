# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/13/66/a2/1366a2070fdd18bc95ee2fd06325f58196260c3e3db25ed749cb52be9868f0e8b2ca53a16762983361022f81470a320843ee958a2cbdfeaa97c79fbaf7200f13 -> cargo-c-0.10.7-funtoo-crates-bundle-fa4b9a447548836e145e222529f213a9c0f939cbcb21afef6077a11a678fd7ec8b4bf1d667cd2f7cda158685881e05168338d8153167594f5e98fb124aef1be9.tar.gz"

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