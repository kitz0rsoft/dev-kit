# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/b3/fc/a9/b3fca99c3837bf1cabcbad78f821852e8b91672f21bbe0ebd7fafe290147985fc5059021f0cd6ac94f7ed5e0b3a415213bb672a624566c483c75309d80293897 -> cargo-c-0.10.7-funtoo-crates-bundle-5627b10483954dc550c0aeefaf4606d37401acf6381fe0cd96ef3cb545317ad3cfb513fc3a052c0c1fb4430b3fe89b2e2c424de58d5ed72a54e72631e2a11a9c.tar.gz"

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