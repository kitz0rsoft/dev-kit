# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/30/9a/cf/309acf22e12490102b506649e2857a5906d290f33742201d4d4e8d5916fa775ff233aa4df2e1819a79daeb554612092b3c19d76905652fc65d61b0a4686ffb6c -> cargo-c-0.10.3-funtoo-crates-bundle-ce3b03ff17ae86ca043be43e483b825a245cba6c415d7c6ba2199223abeff11bc6350b8293a48c6e0a0dc4c786f9654207865fbc99bb19dcb827f27e9b5296d8.tar.gz"

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