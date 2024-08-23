# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/dc/a1/57/dca1572641aaee072e501456d6bffd608702f45e6c2f19464b10da96070594bb8e3ecfaca4a8f5263ce97a54bf9c87d13d6c52222b9017d0dd28deacf98d05d8 -> cargo-c-0.10.3-funtoo-crates-bundle-14082a6b039799364d7b96dd01fc0587486e09d0129992e8fed6cc7c282fcba2b8a3963b1ae9018ade966d9273c7931ca0b12d4ff6436b01fabb383acce20451.tar.gz"

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