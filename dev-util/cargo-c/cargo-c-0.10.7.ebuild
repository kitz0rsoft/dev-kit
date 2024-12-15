# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/79/2c/9a/792c9aa9c497d472dd1418e536f8b96448e5a7cac066b845dc8222bfab1843ef39b9223ab2a8ed51d6ed779bf28911e54eba659ef2ec68eb774017ac7065bfe2 -> cargo-c-0.10.7-funtoo-crates-bundle-726ccdf321ccfaaeb871014c6ffe8f0ab7314b99126d53de74cb3abe9238a4a68e94839b0de02439fb8292149c9df95c989907fae3dd2ae675df5a015d83a30f.tar.gz"

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