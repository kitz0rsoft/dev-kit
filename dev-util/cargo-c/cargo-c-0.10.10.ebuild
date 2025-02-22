# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/144defa1f222400129d75092b826877348035fb8 -> cargo-c-0.10.10-144defa.tar.gz
https://regen.mordor/0f/07/de/0f07de8496d9534c89aca5b40529569c4ad60d80ebf242aab9e77d59054564c21fbb8b0e0d309f2c35955c18d4bc09d85d790638b5491131537128d072701dc0 -> cargo-c-0.10.10-funtoo-crates-bundle-584accfca314c6f1f36c3c309ce9eef1086715517328d36dc7a71ad167d360b1ed699d137ad5b214d0884ac02f7a7e08a10c3f553b7ab691940a0608ddc5d326.tar.gz"

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