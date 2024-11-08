# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/79/1d/27/791d27bef8021d63691c4849311a7764ae16ff63d28620dc9c1eb628da9c8b9fcb028ed9215f9d9030ffde1390647da2c575b48dd28933a5db9620252880c44c -> cargo-c-0.10.5-funtoo-crates-bundle-0ece30c6af26d8d3c769f6add916fc09a887fda298c4022799f238bff3fbe6d2b3328a44103e7ae9c998b628cf979fc1afa933091d2d452b55aef07fcb75bc20.tar.gz"

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