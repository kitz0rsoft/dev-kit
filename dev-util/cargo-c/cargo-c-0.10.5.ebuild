# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://distfiles.macaronios.org/0c/72/aa/0c72aa151f5a55af30cb44ebca0bdab17d454bb93c563cb3a9044c2183637408f9595a022a798761240552d2569d5dcff3f350325d4aa51912ddbd999c3ec889 -> cargo-c-0.10.5-funtoo-crates-bundle-5e9c20d1752aa2e247c02fcf74a9fc3a37607790338aee70435faac335c6c82adfe69b7cee214f0f0ffb72a16e538946cb093e9a13391fa702053e745fd51fe7.tar.gz"

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